import React from 'react'
import '../css/Nav.css'
import MuiAppBar from '@mui/material/AppBar'
import Toolbar from '@mui/material/Toolbar'
import Typography from '@mui/material/Typography'


import NavLoggedIn from '../components/nav/NavLoggedIn'
import NavLoggedOut from '../components/nav/NavLoggedOut.js'

import { Link } from 'react-router-dom'

const Nav = ({ user, onLogout }) => {
  return (
    <MuiAppBar
      position='fixed'
      elevation={0}
      sx={{ backgroundColor: 'background.default', color: 'text.primary' }}>
      <Toolbar className='flex'>
        <Link to='/'>
          <Typography
            component='h1'
            variant='h5'
            color='inherit'
            noWrap
            className='flex'
            align='center'>
            <span className='logo'>Moringa Desk</span>
          </Typography>
        </Link>
        {!user ? (
          <NavLoggedOut />
        ) : (
          <NavLoggedIn user={user} onLogout={onLogout} />
        )}
      </Toolbar>
    </MuiAppBar>
  )
}

export default Nav
