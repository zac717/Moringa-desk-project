import React from "react";
import PublicIcon from "@material-ui/icons/Public";
import StarsIcon from "@material-ui/icons/Stars";
import WorkIcon from "@material-ui/icons/Work";
import "./css/Sidebar.css";
import { Link } from "react-router-dom";

function Sidebar() {
  return (
    <div className="sidebar">
      <div className="sidebar-container">
        <div className="sidebar-options">
          <div className="sidebar-option">
            <Link to="/">Home</Link>

            {/* <a href="/">Home</a> */}
          </div>
          <div className="sidebar-option">
            <p>PUBLIC</p>
            <div className="link">
              <div className="link-tag">
                <PublicIcon />
                <Link to="/question">Question</Link>

                {/* <a href="/">Question</a> */}
              </div>

              <div className="tags">
                <p>Tags</p>
              </div>
            </div>
          </div>
          <div className="sidebar-option">

            <div className="link">
              <div className="link-tag">



                {/* <a href="/">Explore Collectives</a> */}
              </div>
            </div>
          </div>
          <div className="sidebar-option">


              {/* <a
                style={{
                  margin: "10px 20px",
                }}
                href="/"
              >
                Jobs
              </a> */}
              {/* <a
                style={{
                  marginLeft: "20px",
                }}
                href="/"
              >
                Companies
              </a> */}

            </div>
          </div>
          <div className="sidebar-option">




              {/* <a href="/">Companies</a> */}
            </div>
          </div>
        </div>


  );
}

export default Sidebar;
