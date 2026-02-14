def simple_interest(p, t, r=5):
    return (p * t * r) / 100

principal = float(input("Principal amount: "))
time = float(input("Time period: "))

print("Simple Interest:", simple_interest(principal, time))
