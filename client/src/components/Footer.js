import React from 'react'
import footer from './footer.css'
import { Link } from 'react-router-dom'

function Footer() {
  return (
    <div className='footer'>
        <div className='container'>
            <div className='row'>
                <div className='col-md-4'>
                    <h4>Contact Us</h4>
                    <p>123 Main St</p>
                    <p>Anytown, Kenya</p>
                    <p>+254 -xxx- xxx</p>
                    <p>info@</p>
                </div>

                <div className='col-md-4'>

                </div>
                <div className='col-md-4'>
                    <h4>Follow Us</h4>
                    <ul className="social-links">
                        <li><a href="#"><i className="fab fa-facebook"></i></a></li>
                        <li><a href="#"><i className="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i className="fab fa-instagram"></i></a></li>
                        <li><a href="https://github.com/jamnjeri/phase2-project"><i className="fab fa-github"></i></a></li>
                    </ul>
                </div>
            </div>
            <div className="copyright">
                <p>Copyright © 2023  Inc.</p>
            </div>
        </div>
    </div>

  )
}

export default Footer
