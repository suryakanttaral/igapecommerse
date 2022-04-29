var mysql = require("mysql");

class Database {
    constructor() {
        this.con = mysql.createConnection({
            host: "localhost",
            user: "root",
            password: "",
            database: "igapecommerce"
        });
    }

    query = (sql,args) => {
        return new Promise((resolve,rejects)=>{
            this.con.query(sql,args,function(err, result){            
                if (err) {                   
                    return rejects(err);
                }
                resolve(result);
            //    console.log(result);
            });           
        });
    }

    close(){
        return new Promise((resolve,rejects)=>{
            this.con.end((err)=>{
                if(err){
                    rejects(err);
                }
                resolve("success");
            });
        });
    }
}

module.exports = {
    Database: Database
}