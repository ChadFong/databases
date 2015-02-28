var models = require('../models');
var bluebird = require('bluebird');



module.exports = {
  messages: {
    get: function (req, res) {
      console.log("Messages received")
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      console.log("Messages posted")
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      console.log("Users received")
    },
    post: function (req, res) {
      console.log("Users posted")
    }
  }
};

