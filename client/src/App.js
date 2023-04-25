import Home from './containers/home/Home';
import  { ThemeProvider } from 'styled-components';
import * as React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import theme from './theme/theme';
import Box from '@mui/material/Box';
import CssBaseline from '@mui/material/CssBaseline';
import Layout from './containers/Layout';
import SignUpLogin from './containers/SignUpLogin';
import {  createTheme } from '@mui/material/styles';
import Moringaflow from "./components/Moringaflow";
import AddQuestion from "./components/AddQuestion";
import ViewQuestion from "./components/ViewQuestion";
import SignUp from './containers/SignUpLogin';
import ProfileInfo from './containers/profile/ProfileInfo';
import Footer from './components/Footer';
import  './css/App.css'



function App() {
  const appliedTheme = createTheme(theme)
  const [user, setUser] = React.useState(null)



  React.useEffect(() => {
    // auto-login
    handleCheckLogin()

    //fetch list recommendations

  }, [])

  const handleCheckLogin = () => {
    fetch('/api/me').then((response) => {
      if (response.ok) {
        response.json().then((user) => {
          setUser(user)
        })
      } else {
        response.json().then((err) => console.log(err))
      }
    })
  }

  const handleLogout = () => {
    fetch('/logout', {
      method: 'DELETE',
    }).then((response) => {
      if (response.ok) setUser(null)
    })
  }
  return (

    <ThemeProvider theme={appliedTheme}>
    <Box className='flex column'>
    <CssBaseline />
    <Router>
    <Layout user={user} onLogout={handleLogout}>

    <Routes>

    <Route
     index
     path='/'
      element={
      <Home
      user={user}
      />

      }/>
      <Route
      path='join-moringaDesk'
      element={
        <SignUp
          onLogin={setUser}
          onLogout={handleLogout}
          user={user}
        />
      }
    />


    <Route
    path='login'
    element={
      <SignUpLogin
        onLogin={setUser}
        onLogout={handleLogout}
        user={user}
      />
    }
  />

      <Route
        path='search'
        element={
          <Moringaflow
          user={user}
           onLogout={handleLogout}
           setUser={setUser}
             handleCheckLogin={handleCheckLogin}
            />
            }
           />
           <Route
           path='add-question'
           element={
             <AddQuestion
             user={user}
              onLogout={handleLogout}
              setUser={setUser}
                handleCheckLogin={handleCheckLogin}
               />
               }
              />
              <Route
              path='question'
              element={
                <ViewQuestion
                user={user}
                 onLogout={handleLogout}
                 setUser={setUser}
                   handleCheckLogin={handleCheckLogin}
                  />
                  }
                 />
                 <Route
                 path='/profile/my-info'
                 element={
                   <ProfileInfo
                     user={user}
                     onLogout={handleLogout}
                     setUser={setUser}
                     handleCheckLogin={handleCheckLogin}
                   />
                 }
               />



    </Routes>
    </Layout>
    </Router>
    </Box>
    </ThemeProvider>
  );

}

export default App;

