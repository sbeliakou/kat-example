#!/bin/bash +xe

echo Hello, who am I talking to?

echo -n FirstName:
read firstname

echo -n LastName:
read lastname

echo -n email:
read email

echo "Hello ${firstname} ${lastname}"

