import {render, screen, cleanup, getByText } from '@testing-library/react'
import {shallow} from 'enzyme'
import FormLogin from "../../form/FormLogin";
import { Button, TextField, Alert, Stack } from '@mui/material'

afterEach(() => {
    cleanup()
})

// test ('should render Login component',() => {
    // render(<FormLogin/>);
    // const loginElement = screen.getAllByAltTestId('login-1');
    // expect(loginElement).toBeInTheDocument()
    // const loginElement = screen.getByTestId('')
//     expect(<FormLogin/>).toHaveAttribute('div')
// })

// describe('User Login', () => {
//     test('test content renders on page', () => {
//         const {testedObj} = render(<FormLogin/>)
//         render(<Button/>)
//         expect(<Button/>).toBeInTheDocument()
//     })

//     // test('User can login- login button works', () => {
//     //     const testedObj = 
//     // })
// })
describe('User Login', () => {
    describe('Page content loads', () => {
        test('Email input to be on page',() => {
            shallow(<FormLogin/>)
            const testedObj = screen.getByLabelText('email')
            expect(testedObj).toBeInTheDocument()
        })
    })
    // describe('login works',() => {
    //     test('Post request to be sent out successfully',() => {
    //         const 
    //     })
    // })
})
