import React from 'react'
import Hero from '../../components/home/Hero'
import HomeRecs from './HomeRecs'
import Footer from '../../components/Footer'

const Home = ({ user, recommendationLists, handleListSearch }) => {
  return (
    <>
      <Hero user={user} />
      <HomeRecs
        user={user}
        recommendationLists={recommendationLists}
        handleListSearch={handleListSearch}
      />
    </>
  )
}


export default Home
