@cds.persistence.exists
@cds.persistence.calcview
entity CV_TEST {
        ID          : Integer      @title: 'ID: ID';
    key TITLE       : String(5000) @title: 'TITLE: TITLE';
        TOTALE      : Integer      @title: 'TOTALE: TOTALE';
        RESERVATION : Integer      @title: 'RESERVATION: RESERVATION';
    key TEST        : Integer      @title: 'TEST: TEST';
}
