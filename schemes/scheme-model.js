const db = require("../data/config");

function find() {
  return db("schemes").select();
}

function findByID(id) {
  return db("schemes")
    .where({ id })
    .first();
}
function findBySteps(scheme_id) {
  return db("schemes")
    .join("schemes", "schemes.scheme_name", "steps._id ")
    .where({ scheme_id })
    .select("steps.id", "steps.instructions", "schemes.scheme_name");
}
function add() {
  const [id] = db("schemes")
    .insert(userData)
    .insert(data);
  return db("schemes")
    .where({ id })
    .first();
}
function update(id, body) {
  const update = db("schemes")
    .where({ id })
    .update(body);
  return findByID(id);
}
function remove(id) {
  return db("schemes")
    .where({ id })
    .del();
}

module.exports = {
  find,
  findByID,
  findBySteps,
  add,
  update,
  remove,
};
