class Catalog extends cds.ApplicationService {
    init() {
        console.log("HANDLER")
        const { Books } = this.entities
        this.after('READ', Books, req => { console.log(req) })

        return super.init()
    }
}

export default Catalog      