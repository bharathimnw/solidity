[
	{
		"constant": true,
		"inputs": [],
		"name": "show",
		"outputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "isblno",
				"type": "uint256"
			}
		],
		"name": "search",
		"outputs": [
			{
				"name": "",
				"type": "bool"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "User",
		"outputs": [
			{
				"name": "u_id",
				"type": "uint256"
			},
			{
				"name": "count",
				"type": "uint256"
			},
			{
				"name": "ubook",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"name": "Books",
		"outputs": [
			{
				"name": "isbl_no",
				"type": "uint256"
			},
			{
				"name": "b_count",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "isblno",
				"type": "uint256"
			},
			{
				"name": "i_no",
				"type": "uint256"
			}
		],
		"name": "addbooks",
		"outputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "no",
				"type": "uint256"
			},
			{
				"name": "uid",
				"type": "uint256"
			}
		],
		"name": "addusers",
		"outputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "isblno",
				"type": "uint256"
			},
			{
				"name": "no",
				"type": "uint256"
			}
		],
		"name": "getbooks",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "no",
				"type": "uint256"
			},
			{
				"name": "isblno",
				"type": "uint256"
			}
		],
		"name": "r_book",
		"outputs": [
			{
				"name": "",
				"type": "uint256"
			}
		],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	}
]