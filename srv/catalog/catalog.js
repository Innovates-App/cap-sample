class Catalog extends cds.ApplicationService {
  init() {
    console.log("HANDLER");
    const { Books } = this.entities;
    this.after("READ", Books, getBookID(Books));
    this.on("orderBook", orderBook(Books));

    return super.init();
  }
}

function getBookID(Books) {
  return function (req, res) {
    console.log(req[0].ID);
  };
}

function orderBook(Books) {
  return async function (req, res) {
    console.log("a");
    let response = { error: false, message: "Ordine ricevuto" };
    try {
      const ID = req.data.bookID;
      const { TOTALE, RESERVATION } = await SELECT.from(Books, ID, [
        "TOTALE",
        "RESERVATION",
      ]);
      const available = TOTALE - RESERVATION;

      await UPDATE(Books, ID).with({ AVAILABLE: available });
    } catch (e) {
      response = { error: true, message: e.error };
    }

    return response;
  };
}

export default Catalog;
