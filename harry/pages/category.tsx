import React, { useReducer } from 'react';
import Router from 'next/router';

// export default (props) => {
//     return (
//         <div>
//             First post page
//             <div>
//                 <button onClick={() => Router.push('/')}>Home</button>
//             </div>
//         </div>  
//     );
// }

type Color = 'red' | 'orange' | 'yellow';

type State = {
  count: number;
  text: string;
  color: Color;
  isGood: boolean;
};

type Action =
  | { type: 'SET_STUDENT'; text: string }
  | { type: 'SET_PROFESSOR'; text: string }
  | { type: 'SET_SUBJECT'; text: string };

function reducer(state: State, action: Action): State {
  switch (action.type) {
    case 'SET_STUDENT':
       Router.push('/api/harry?table=student');
      return <StudentTable />
    case 'SET_PROFESSOR':
        Router.push('/api/harry?table=professor');
        return <ProfessorTable />
    case 'SET_SUBJECT':
        Router.push('/api/harry?table=class')
        return <ProfessorTable />
    default:
      throw new Error('Unhandled action');
  }
}

function Category() {
  const [state, dispatch] = useReducer(reducer, {
    count: 0,
    text: 'hello',
    color: 'red',
    isGood: true
  });

  const setStudent = () => dispatch({ type: 'SET_STUDENT', text: '학생' }); // count 를 넣지 않으면 에러발생
  const setProfessor = () => dispatch({ type: 'SET_PROFESSOR', text: '교수' }); // text 를 넣지 않으면 에러 발생
  const setSubject = () => dispatch({ type: 'SET_SUBJECT', text: '과목' }); // orange 를 넣지 않으면 에러 발생

  return (
    <div>
      <p>
        <code>text: </code> {state.text}
      </p>
      <div>
        <button onClick={setStudent}>학생</button>
        <button onClick={setProfessor}>교수</button>
        <button onClick={setSubject}>과목</button>
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
		fetchGunpla()
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
					<td ><img src={unit.boxart} className='boxart'/></td>
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
		fetchGunpla()
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
					<td ><img src={unit.boxart} className='boxart'/></td>
				</tr>
			)}
		</table>
	)
}

export default Category;