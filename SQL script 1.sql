CREATE VIEW dbo.vEconomic AS
SELECT *
FROM OPENROWSET(
    BULK 'https://economicindiast.blob.core.windows.net/transformed-data/HDI.csv/part-00000-tid-581289807433654705-937bd76e-1e7a-4c5b-96e5-1676e2f26247-43-1-c000.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = FALSE
) AS rows;

SELECT * FROM dbo.vEconomic;

CREATE VIEW dbo.vWorld AS
SELECT *
FROM OPENROWSET(
    BULK 'https://economicindiast.blob.core.windows.net/transformed-data/World.csv/part-00000-tid-2167303817094829418-4de64847-75fe-4950-b5f1-7df6d0e0934f-45-1-c000.csv',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    HEADER_ROW = FALSE
) AS rows;

SELECT * FROM dbo.vWorld;
