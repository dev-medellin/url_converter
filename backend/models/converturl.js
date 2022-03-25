const db = require('../util/database');

module.exports = class UrlConvert {
  constructor(redirect, alias) {
    this.redirect = redirect;
    this.alias = alias;
  }

  static fetchAll() {
    return db.execute('SELECT * FROM converted');
  }

  static post(redirect,alias) {
    return db.execute('INSERT INTO converted (redirect_url,alias) VALUES (?,?)', [redirect,alias]);
  }

//   static update(id, item) {
//     return db.execute('UPDATE groceries SET item = ? WHERE id = ?', [item, id]);
//   }

//   static delete(id) {
//     return db.execute('DELETE FROM groceries WHERE id = ?', [id]);
//   }
};
