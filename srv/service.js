const cds = require ('@sap/cds');
const { request } = require('http');

module.exports = cds.service.impl(async function (){

    const {Products} = this.entities;
    const service = await cds.connect.to('Northwind');

    this.on("READ", Products, request => {
        return service.tx(request).run(request.query);
    })

});