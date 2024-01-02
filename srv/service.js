const cds = require ('@sap/cds');
const { request } = require('http');

module.exports = cds.service.impl(async function (){

    const {Products} = this.entities;
    const service = await cds.connect.to('Northwind');

    const {LocalProducts} = cds.entities("com.sap");

    this.on('READ', Products, async(request,resp) => {
        var oProductList = await service.tx(request).get("/Products"); //OR service.tx(request).run(request.query);
        await UPSERT.into(LocalProducts).entries(oProductList);
        return oProductList;
      });

    // this.on("READ", Products, request => {
    //     return service.tx(request).run(request.query);
    // })

});