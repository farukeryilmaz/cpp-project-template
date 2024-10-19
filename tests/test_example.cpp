#include <gtest/gtest.h>

#include "example.hpp"

TEST(AdditionTest, HandlesPositiveInput) {
    EXPECT_EQ(MyProject::add(1, 2), 3);
}

TEST(AdditionTest, HandlesNegativeInput) {
    EXPECT_EQ(MyProject::add(-1, -1), -2);
}

TEST(AdditionTest, HandlesZeroInput) {
    EXPECT_EQ(MyProject::add(0, 0), 0);
}
