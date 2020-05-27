use classicmodels;
select c.customerNumber, customerName, phone, paymentDate, amount from customers c
join payments p
on c.customerNumber = p.customerNumber
where city = 'Las Vegas';
select c.customerNumber, c.customerName, o.orderNumber, o.status
from customers c
left join orders o
on c.customerNumber = o.customerNumber
where orderNumber is null;