/* jshint asi:true */

require( 'http' )
.createServer(function ( req, res ) {
    res.write( 'hello world' )
    res.end()
})
.listen( 3000, function () {
    console.log( 'server l