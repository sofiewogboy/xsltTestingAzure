
const libxslt         = require('libxslt');
var fs = require('fs');

module.exports = function(app, db) {

    let xmldoc = null;
    let xsltdoc = null;
    fs.readFile( 'C:\\proto\\xsltproto\\test.xml','utf8', function(err, data) {
        this.xmldoc = data; 
        //console.log(this.xmldoc);
     });
    
     fs.readFile( 'C:\\proto\\xsltproto\\test.xslt','utf8', function(err, data) {
        this.xsltdoc = data; 
        //console.log(this.xmldoc);
     });

    app.get('/test', (req, res) => {

        res.send('Data Recieved');
        // You'll create your note here.
        libxslt.parse(this.xsltdoc,
            (err, styleSheet) => {
                //console.log('xml parse', err, styleSheet)
                //styleSheet.applyToFile('C:\\proto\\xsltproto\\test.xml',{},{},(err, doc) => {
                styleSheet.apply(this.xmldoc,{},{},(err, doc) => {

                    /*if (err)
                        res.send('Error: ' + JSON.stringify(err));*/

                    //console.log('document parse', err, doc)
                    const filename = "C:\\proto\\xsltproto\\test" + Date.now().toString() + ".xml";
                    /*fs.writeFile(filename, doc, function(err) {
                        if(err) {
                            return console.log(err);
                        }
                    
                        res.send('File Saved: ' + filename);
                    });*/ 
                    console.log('document parsed:' + filename);
                    /*res.send('File Saved: ' + filename);*/
                });
                /*if (err)
                    res.send('Error: ' + JSON.stringify(err));*/
            });
        
      });
};