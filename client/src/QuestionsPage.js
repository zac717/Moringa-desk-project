import React from 'react'
import styled from 'styled-components'

const StyledHeader = styled.h1`
font-size: 1.8rem;
text-align: center`;

const PinkButton = styled.button`
background-color: #dd7973;
color: #fff;
border: 0;
border-radius: 5px;
padding: 12px 10px;
`;

const HeaderRow = styled.div`
display: grid;
grid-template-columns: 1fr min-content;
padding: 30px 20px;
min-width: 20%;
justify-content: space-between;

`;

const QuestionRow = styled.div`
    background-color: rgba(255,255,255,.1);
    padding: 10px 15px;
    display: grid;
    grid-template-columns: 50px 50px 50px 1fr;
`;
const QuestionStat = styled.div`
text-align: center;
font-size: 1.2rem;
span{
    font-size: .7rem;
    display: block;
    font-weight: 300;
}

`;
const QuestionTitleArea = styled.div`

`;
const Tag = styled.span`
    display: inline-block;
    margin-right: 4px;
    background-color: #3e4a52;
`;



function QuestionsPage() {
  return (
    <main>
    <HeaderRow>
      <StyledHeader>Frequently    asked questions</StyledHeader>
      <PinkButton>Ask&nbsp;Question</PinkButton>
      </HeaderRow>
      <QuestionRow>
      <QuestionStat>0<span>votes</span></QuestionStat>
      <QuestionStat>1<span>answers</span></QuestionStat>
      <QuestionStat>6<span>views</span></QuestionStat>
      <QuestionTitleArea>

      <h2>getting string in quotes in javascript</h2>
      </QuestionTitleArea>
      </QuestionRow>
      </main>
  )
}

export default QuestionsPage

