// Requires
var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 3306,

    // Your username
    user: "root",

    // Your password
    password: "Nov121990!",
    database: "bamazon_db"
});

connection.connect(function (err) {
    if (err) throw err;
    showProducts();
});

function showProducts() {
    console.log("Here are all of our amazing products:\n");
    connection.query("SELECT * FROM products", function (err, res) {
        if (err) throw err;

        console.log(res);
        userSearch();
    });
}
function userSearch() {
    inquirer
        .prompt([
            {
                type: "input",
                name: "userItem",
                message: "What is the ID number of the item you are buying today?"
            },
            {
                type: "input",
                name: "userQuantity",
                message: "And how many would you like to buy today?"
            }
        ])
        .then(function (user) {
            for (var i = 0; i < res.length; i++) {
                if (user.userItem == res[i].id) {
                    if (user.userQuantity > res[i].stock_quantity) {
                        console.log("\nInsufficient quantity!")
                        connection.end();
                    } else {
                        var cost = res[i].price * user.userQuantity

                        connection.query(
                            "UPDATE products SET ? WHERE ?",
                            [{ stock_quantity: newQuantity }, { id: id }],
                            function (err) {
                                if (err) throw err;
                                console.log("\nThat'll be " + cost + "sir or ma'am!")
                                connection.end();
                            })
                    }
                }
            }
        })
    }