class MenuLoader {

  constructor() {
  }

  loadXMLDoc(filename) {
    if (window.ActiveXObject) {
      let xhttp = new ActiveXObject("Msxml2.XMLHTTP");
    } else {
      let xhttp = new XMLHttpRequest();
    }
    xhttp.open("GET", filename, false);
    try {
      xhttp.responseType = "msxml-document"
    } catch(err) {

    }
    xhttp.send("");
    return xhttp.responseXML;
  }

  displayResult() {
    this.xml = loadXMLDoc("./productos.xml");
    this.xsl = loadXMLDoc("./carta.xsl");
    // code for IE
    if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
      let ex = this.xml.transformNode(this.xsl);
      document.getElementById("menuDisplay").innerHTML = ex;
    }
    // code for Chrome, Firefox, Opera, etc.
    else if (document.implementation && document.implementation.createDocument) {
      let xsltProcessor = new XSLTProcessor();
      xsltProcessor.importStylesheet(this.xsl);
      let resultDocument = xsltProcessor.transformToFragment(this.xml, document);
      document.getElementById("menuDisplay").appendChild(resultDocument);
    }
  }
}

let menuLoader = new MenuLoader();