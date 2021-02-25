const inquirer = require('inquirer');
const mysql = require('mysql');


const host = "127.0.0.1";
const user = "root";
const password = "root";
const database = "employeeDB";

const con = mysql.createConnection({
  host: host,
  user: user,
  password: password,
  database: database,
});

con.connect((err) => {
  if (err) {
    console.log('Problem connecting!');
    process.exit(1);
  }
  console.info(`Connected at ${con.threadId}.`);

  displayDatabase();
  askQuestions();
});

function displayDatabase() {
  // TODO
}

function askQuestions() {
  inquirer.prompt(
    {
      // TODO
    }
  );
}

