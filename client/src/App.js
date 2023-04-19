import Home from './containers/home/Home'
import styled, {ThemeProvider, createGlobalStyle} from 'styled-components';
import AfterSignup from './AfterSignup';
import * as React from 'react'
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom'
import theme from './theme/theme'
import Box from '@mui/material/Box'
import CssBaseline from '@mui/material/CssBaseline'
import Layout from './containers/Layout'
import SignUpLogin from './containers/SignUpLogin'



const GlobalStyles = createGlobalStyle`
@import url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300&family=Roboto:ital,wght@1,900&display=swap');

body{
  background: #2d2d2d;
  color: #fff;
  font-family: Roboto; sans-serif;
}
`;

function App() {

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
    fetch('/api/logout', {
      method: 'DELETE',
    }).then((response) => {
      if (response.ok) setUser(null)
    })
  }
  return (

    <Box className='flex column'>
    <CssBaseline />
    <Router>
    <Layout user={user} onLogout={handleLogout}>
    <Routes>
    <Route
    index
    path='/'
    element={
      <Home />}
      />
      <Route
      path='join-moringaDesk'
      element={
        <SignUpLogin
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

    </Routes>
    </Layout>
    </Router>
    </Box>

  );

}

export default App;
