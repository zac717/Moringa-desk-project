import "./App.css";
import {
  BrowserRouter as Router,
  Routes,
  Route,
  Navigate,
} from "react-router-dom";
import Moringaflow from "./components/Moringaflow";
import Header from "./components/Header";
import AddQuestion from "./components/AddQuestion";
import ViewQuestion from "./components/ViewQuestion";
import { useDispatch, Provider} from "react-redux";
import { login, logout, selectUser } from "./feature/userSlice";
import { useEffect } from "react";


function Appss() {
  
  return (
    <div className="App">
      <Router>
        <Header />
        <Routes>

          <Route exact path="/" component={Moringaflow} />
          <Route exact path="/add-question" component={AddQuestion} />
          <Route exact path="/question" component={ViewQuestion} />
        </Routes>
      </Router>
    </div>
  );
}

export default Appss;
