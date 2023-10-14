class Child2:
    def child2(self):
        print("child2")


class Child1(Child2):
    def child1(self):
        self.child2()
        print("child1")


class Parent1(Child1):
    def test1(self):
        self.child1()


# init = Parent1()
# init.test1()


class Hanrong:
    def __init__(self, test="hi"):
        self.bank = test
        print(self.bank)

        return


init = Hanrong(test="abc")
