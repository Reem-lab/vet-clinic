
![](https://img.shields.io/static/v1?label=BY&message=Reemoz&color=pink)

## Vet Clinic 

> The project contain database created using a relational database. to store the information for clinic, so you can store the information for all the animals that come and treat in this clinic and the visits, the specializations and the vets there. 🦮😾🐴👩🏻‍⚕️

## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

### Requirements
- PostgreSQL server installed and running
- psql installed

### Clone this repository

```bash
$ git clone git@github.com:Reem-lab/vet-clinic.git
$ cd vet-clinic
```
1. Connect to your PostgreSQL server with `psql`
```bash
psql
```
2. Create the database `vet-clinic`
```bash
CREATE DATABASE vet-clinic;
```
3. Connect to your database `vet-clinic`
```bash
\c vet-clinic
```

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**


## Authors

👤 **Reem**

 Platform | Badge |
 --- | --- |
 **GitHub**  | [@Reem-lab](https://github.com/Reem-lab)
 **Twitter** | [Rem79940127](https://twitter.com/Rem79940127)
 **LinkdIn** | [reem-janina](https://www.linkedin.com/in/reem-janina-ab74ab21a/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./MIT.md) licensed.
