print("abc")

weiyang = "weiyang"

a = ""
if weiyang == "weiyang":
    print("Condition met. Success!")
    a = 1

else:
    print("Condition not met. Fail.")
    a = 2


def sort_sub_product_list(self, db_response):
    subproduct_list = db_response.get("subProductCode", [])

    print(subproduct_list)

    sorted_list = sorted(subproduct_list, key=lambda x: int(x))
    return sorted_list
