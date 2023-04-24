
import styled from 'styled-components';
import { faCoffee } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

const StyledHeader = styled.header`
background-color: #111439;
box-shadow: 0 3px 3px rgba(0,0,0.2);
display: grid;
grid-template-columns: 200px 1fr 200px;
grid-column-gap: 20px;
`;

const LogoLink = styled.a`
color:#fff;
text-decoration:none;
display: inline-block;
line-height: 50px;
height: 50px;
padding: 10px 15px;
span{
  display: inline-block;
  padding-left: 5px;
  padding-top: 10px;
};
b{
  font-weight: bold;
};
`;

const SearchInput = styled.input`
flex-grow: 1;
display: inline-block;
box-sizing: border-box;
width: 100%;
border:1px solid #aaa;
padding: 9px 7px;
margin-top: 7px;
background: rgba(0,0,0,0.1);
`;

const ProfileLink = styled.a`
color: #fff;
text-decoration: none;
line-height: 50px;
`;


function Header() {
  return (
    <StyledHeader>
    <LogoLink href="" className="logo">
    <FontAwesomeIcon icon={faCoffee} />
    <span><b>MoringaDesk</b></span>
    </LogoLink>
    <form action="" className="search">
    <SearchInput type="text" placeholder="Search..."/>
    </form>
    <ProfileLink href="" className="profile">avatar</ProfileLink>
    </StyledHeader>
  )
}

export default Header

