"use strict";

var dbm;
var type;
var fs = require('fs');
var path = require('path');
var Promise;

exports.setup = (options) => {
  dbm = options.dbmigrate
  type = dbm.dataType
  Promise = options.Promise
};

exports.up = (db) => {
  const filePath = path.join(__dirname, 'sqls', '20200912000000-seed_table_users_up.sql');

  return new Promise((resolve, reject) => {
    fs.readFile(filePath, { encoding: 'utf-8' }, (err, data) => {
      if (err) return reject(err)
      resolve(data);
    })
  })
  .then((data) => {
    return db.runSql(data)
  });
};

exports.down = (db) => {
  const filePath = path.join(__dirname, 'sqls', '20200912000000-seed_table_users_down.sql');

  return new Promise((resolve, reject) => {
    fs.readFile(filePath, { encoding: 'utf-8' }, (err, data) => {
      if (err) return reject(err)
      resolve(data);
    })
  })
  .then((data) => {
    return db.runSql(data)
  });
};
