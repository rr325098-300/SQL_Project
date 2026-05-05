# 📚 Book-Crossing SQL Project
<img width="1919" height="1022" alt="Screenshot 2026-05-05 132726" src="https://github.com/user-attachments/assets/9bfe218d-3c8c-4e01-881e-9d421ffbd439" />

<img width="1919" height="1017" alt="Screenshot 2026-05-05 132812" src="https://github.com/user-attachments/assets/03d13bcb-9c3f-4b17-8bc0-b09dcf86aca8" />


<img width="1919" height="1021" alt="Screenshot 2026-05-05 133131" src="https://github.com/user-attachments/assets/db870ef1-a746-4d0d-a7ba-5ddee7a5abdb" />

<img width="1919" height="1022" alt="Screenshot 2026-05-05 133113" src="https://github.com/user-attachments/assets/8d069742-d441-419e-9c3e-df3780cc856e" />

<img width="1919" height="1026" alt="Screenshot 2026-05-05 133057" src="https://github.com/user-attachments/assets/0881a0c6-866c-423c-b7a9-405e8a91a42d" />


<img width="1919" height="1079" alt="Screenshot 2026-05-05 132906" src="https://github.com/user-attachments/assets/ca7bfa10-e000-40e5-9b14-1c5d307fd635" />

<img width="1919" height="1022" alt="Screenshot 2026-05-05 133034" src="https://github.com/user-attachments/assets/e8fd59bb-b0fd-4f72-a288-5eae11c01783" />

<img width="1919" height="1022" alt="Screenshot 2026-05-05 132949" src="https://github.com/user-attachments/assets/0898786a-7e8d-41d6-b383-f75a30576356" />

<img width="1919" height="1021" alt="Screenshot 2026-05-05 133005" src="https://github.com/user-attachments/assets/d088a339-d61b-43c8-83d6-fb853b26fe56" />

<img width="1919" height="1020" alt="Screenshot 2026-05-05 132935" src="https://github.com/user-attachments/assets/8cb364ed-4b93-4b59-bd87-7c29a5d3c47f" />

<img width="1919" height="1020" alt="Screenshot 2026-05-05 132842" src="https://github.com/user-attachments/assets/4af94cbf-8bae-4a29-b716-b560f7c08737" />

<img width="1919" height="1017" alt="Screenshot 2026-05-05 132748" src="https://github.com/user-attachments/assets/cdcf72bb-0a04-4efe-ad08-70bb4f3454f8" />



This project is a PostgreSQL-based database system built using the Book-Crossing dataset. It focuses on designing a structured relational database and performing data analysis using SQL queries.

The database consists of three main tables:

- **Books** – contains information such as ISBN, title, author, year, and publisher  
- **Users** – stores user details like user ID, location, and age  
- **Ratings** – captures the relationship between users and books, including the ratings given  

During the data import process, duplicate entries in the ratings dataset caused constraint errors. To solve this, a temporary table was created to safely load the data, and then only distinct records were inserted into the main ratings table using conflict handling techniques.

After setting up the database, multiple SQL queries were written to analyze the data. These include:

- Retrieving books based on publishers and publication years  
- Filtering users based on location and age  
- Finding highly rated books  
- Identifying the most active user locations  
- Calculating average ratings for publishers  
- Counting the number of books published by each publisher  

The project demonstrates practical knowledge of:

- Database design and relationships  
- Data cleaning and handling duplicates  
- Writing efficient SQL queries  
- Using joins and aggregation functions for analysis  

This project serves as a strong foundation for understanding real-world database systems and performing data analysis using SQL.
