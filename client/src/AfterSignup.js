import {Reset} from 'styled-reset';
import styled, {createGlobalStyle} from 'styled-components'
import Header from './Header';
import QuestionsPage from './QuestionsPage';
const GlobalStyles = createGlobalStyle`
@import url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300&family=Roboto:ital,wght@1,900&display=swap');

body{
  color: #fff;
  font-family: Roboto; sans-serif;
}
`;

function AfterSignup() {
  return (
    <div>
    <Reset />
    <GlobalStyles />
      <Header />
      <QuestionsPage />
      </div>
  );
}

export default AfterSignup
