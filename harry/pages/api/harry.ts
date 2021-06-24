import type { NextApiRequest, NextApiResponse } from 'next'
import mysql from 'mysql'

const dbc = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: '0976',
    database: 'harrydb',
    port: 3306,
})

dbc.connect();

export default (req: NextApiRequest, res: NextApiResponse) => {

    const query: string = 'select * from ' + req.query.table

	dbc.query(query, (err, rows) => {
		if (err) return console.log(err)
    res.status(200).json(rows)
  })
}