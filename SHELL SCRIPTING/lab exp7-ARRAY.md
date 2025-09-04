
# 🐚 Arrays in Shell Scripting  

Arrays in shell scripting allow you to store multiple values in a single variable.  
This makes it easier to manage and manipulate collections of data such as lists, filenames, or numbers.  

---

## 🔹 Declaring an Array  

```bash
# Method 1: Assign values directly
fruits=("apple" "banana" "cherry")

# Method 2: Assign values to specific indices
numbers[0]=10
numbers[1]=20
numbers[2]=30
````

---

## 🔹 Accessing Array Elements

```bash
echo ${fruits[0]}   # apple
echo ${fruits[1]}   # banana
echo ${numbers[2]}  # 30
```

👉 Indexing starts from **0**.

---

## 🔹 Access All Elements

```bash
echo ${fruits[@]}   # apple banana cherry
echo ${fruits[*]}   # apple banana cherry
```

* `@` → Expands each element as a separate word
* `*` → Expands as a single string

---

## 🔹 Array Length

```bash
echo ${#fruits[@]}   # 3
echo ${#numbers[@]}  # 3
```

---

## 🔹 Looping Through Arrays

### Using `for` loop:

```bash
for fruit in "${fruits[@]}"; do
    echo "Fruit: $fruit"
done
```

### Using indices:

```bash
for i in "${!fruits[@]}"; do
    echo "Index $i: ${fruits[$i]}"
done
```

---

## 🔹 Updating Array Elements

```bash
fruits[1]="mango"  
echo ${fruits[@]}   # apple mango cherry
```

---

## 🔹 Deleting Array Elements

```bash
unset fruits[2]  
echo ${fruits[@]}   # apple mango
```

---

## 🔹 Example: Store and Access Commands

```bash
commands=("ls" "pwd" "date")

for cmd in "${commands[@]}"; do
    echo "Running: $cmd"
    $cmd
done
```

---

✨ With arrays in shell scripting, you can simplify repetitive tasks, store lists, and loop efficiently.

