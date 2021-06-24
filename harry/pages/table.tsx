import { useState, useEffect } from 'react';
import axios from 'axios';
import React, { useReducer } from 'react';
import Router from 'next/router';


export default function table() {
	return (
		<div>
			<HarryHeader />
            <Category />
		</div>
	)
}

const HarryHeader = () => {
	return <h1>해리포터와 호그와트</h1>
}


type State = {
  text: string;
};

type Action =
  | { type: 'SET_STUDENT'; text: string }
  | { type: 'SET_PROFESSOR'; text: string }
  | { type: 'SET_SUBJECT'; text: string };


function reducer(state: State, action: Action): State {
  switch (action.type) {
      case 'SET_STUDENT':
      return {
        ...state,
        text: action.text 
      };
    case 'SET_PROFESSOR':
      return {
        ...state,
        text: action.text 
      };
    case 'SET_SUBJECT':
      return {
        ...state,
        text: action.text 
      };
    default:
      throw new Error('Unhandled action');
  }
}

function Category() {

    const [state, dispatch] = useReducer(reducer, {
    text: <StudentTable />
  });

  const setStudent = () => dispatch({ type: 'SET_STUDENT', text : <StudentTable /> });
  const setProfessor = () => dispatch({ type: 'SET_STUDENT', text : <ProfessorTable /> });
  const setSubject = () => dispatch({ type: 'SET_STUDENT', text : <SubjectTable />});
  const setClass = () => dispatch({ type: 'SET_CLASS', text : <ClassTable />});

  return (
    <div>
      <div>
        <button onClick={setStudent}>학생</button>
        <button onClick={setProfessor}>교수</button>
        <button onClick={setSubject}>과목</button>
         <button onClick={setClass}>수강과목</button>
        <div>
              {state.text} 
        </div>
          
          </div>
    </div>
  );
}

const StudentTable = () => {
	const [units, setUnits] = useState([])
	
	const fetchStudent = async () => {
		try {
			const res = await axios.get('https://harrydb-hgzxy.run.goorm.io/api/harry?table=student')
			setUnits(res.data)
		} catch (err) {
			console.log(err)
		}
	}
	
	useEffect(() => {
		fetchStudent()
	}, [])
	
	return (
		<table>
			<tr>
				<th>이미지</th>
				<th>이름</th>
				<th>기숙사</th>
			</tr>
			{units.map((unit, index) => 
				<tr key={index}>
					<td><img src={unit.image} className='boxart'/></td>
					<td>{unit.name}</td>
					<td>{unit.dorm}</td>
				</tr>
			)}
		</table>
	)
}

const ProfessorTable = () => {
	const [units, setUnits] = useState([])
	
	const fetchProfessor = async () => {
		try {
			const res = await axios.get('https://harrydb-hgzxy.run.goorm.io/api/harry?table=professor')
			setUnits(res.data)
		} catch (err) {
			console.log(err)
		}
	}
	
	useEffect(() => {
		fetchProfessor()
	}, [])
	
	return (
		<table>
			<tr>
				<th>이미지</th>
				<th>이름</th>
				<th>과목</th>
			</tr>
			{units.map((unit, index) => 
				<tr key={index}>
					<td><img src={unit.image} className='boxart'/></td>
					<td>{unit.name}</td>
					<td>{unit.subject}</td>

				</tr>
			)}
		</table>
	)
}

const SubjectTable = () => {
	const [units, setUnits] = useState([])
	
	const fetchSubject = async () => {
		try {
			const res = await axios.get('https://harrydb-hgzxy.run.goorm.io/api/harry?table=subject')
			setUnits(res.data)
		} catch (err) {
			console.log(err)
		}
	}
	
	useEffect(() => {
		fetchSubject()
	}, [])
	
	return (
		<table>
			<tr>
				<th>이름</th>
				<th>설명</th>
			</tr>
			{units.map((unit, index) => 
				<tr key={index}>
					<td>{unit.name}</td>
					<td>{unit.description}</td>
				</tr>
			)}
		</table>
	)
}

const ClassTable = () => {
	const [units, setUnits] = useState([])
	
	const fetchClass = async () => {
		try {
			const res = await axios.get('https://harrydb-hgzxy.run.goorm.io/api/harry?table=class')
			setUnits(res.data)
		} catch (err) {
			console.log(err)
		}
	}
	
	useEffect(() => {
		fetchSubject()
	}, [])
	
	return (
		<table>
			<tr>
                <th>과목명</th>
                <th>학생</th>
                <th>교수</th>

			</tr>
			{units.map((unit, index) => 
				<tr key={index}>
					<td>{unit.name}</td>
					<td>{unit.description}</td>
				</tr>
			)}
		</table>
	)
}
