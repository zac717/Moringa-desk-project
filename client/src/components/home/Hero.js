import React from 'react'
import '../../css/Hero.css'
import { Grid, Typography, Paper, Button } from '@mui/material'

import { useNavigate } from 'react-router-dom'
import Footer from '../Footer'

const Hero = ({ user }) => {
  let navigate = useNavigate()

  return (
    <div>
    <Grid
      container
      spacing={2}
      className='hero b-radius-sm'
      sx={{ padding: 0 }}>
      <Paper elevation={0} className='b-radius-sm'>
        <Grid item xs={12} alignItems='center'>
          <Typography component='h2' variant='h2' align='left'>
            Moringa desk. <br />
          </Typography>
          <Typography component='p' variant='h5' align='justify'>
           let's find solutions together
          </Typography>

          <div className='padding-top'>
            <Button
              onClick={() =>
                navigate(!user ? `/login` : `/search `)
              }
              variant='contained'
              className='b-radius btn btn-lg'
              color='primary'>
              Ask a question
            </Button>
            </div>
            </Grid>
            </Paper>
            </Grid>

            <Footer />
            </div>






  )
}

export default Hero
