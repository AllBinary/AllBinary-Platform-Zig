// Generated Code Do Not Modify
// package org.allbinary.logic.communication.sql

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const SqlStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.sql.SqlStrings";
    CREATE_DATABASE: ?*String = null,
    DROP_TABLE: ?*String = null,
    CREATE_TABLE: ?*String = null,
    START: ?*String = null,
    SELECT: ?*String = null,
    FROM: ?*String = null,
    SELECT_ALL: ?*String = null,
    WHERE: ?*String = null,
    AND: ?*String = null,
    UPDATE: ?*String = null,
    SET: ?*String = null,
    SELECT_ALL_FROM: ?*String = null,
    DELETE: ?*String = null,
    LIKE_QUOTE: ?*String = null,
    INSERT_INTO: ?*String = null,
    VALUES: ?*String = null,
    ORDER_BY: ?*String = null,
    COUNT: ?*String = null,
    ASC: ?*String = null,
    DESC: ?*String = null,
    PRIMARY_KEY: ?*String = null,
    END: ?*String = null,
    EQUAL_QUOTE: ?*String = null,
    CLOSE_QUOTE: ?*String = null,
    EQUAL_QUOTE_NO_SPACE: ?*String = null,
    ESCAPE: ?*String = null,
    DOUBLE_ESCAPE: ?*String = null,
    MORE_THAN_QUOTE: ?*String = null,
    LESS_THAN_QUOTE: ?*String = null,
    SINGLE_QUOTE_COMMA_SEP: ?*String = null,
    ID: ?*String = null,
    SQL_STATEMENT_LABEL: ?*String = null,
    COLUMN_VALUE: ?*String = null,
    CREATE_RETURN: ?*String = null,
    FIELD_VALUE: ?*String = null,
    var instance: ?*SqlStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SqlStrings.create();
    }

    fn initFields(this: *Self) void {
        this.CREATE_DATABASE = String.literal("CREATE DATABASE ");
        this.DROP_TABLE = String.literal("DROP TABLE ");
        this.CREATE_TABLE = String.literal("CREATE TABLE ");
        this.START = String.literal(" (");
        this.SELECT = String.literal("SELECT ");
        this.FROM = String.literal(" FROM ");
        this.SELECT_ALL = String.literal("SELECT *");
        this.WHERE = String.literal(" WHERE ");
        this.AND = String.literal(" AND ");
        this.UPDATE = String.literal("UPDATE ");
        this.SET = String.literal(" SET ");
        this.SELECT_ALL_FROM = Inheritance.upcast(?*String, String.plus(this.SELECT_ALL, this.FROM));
        this.DELETE = String.literal("DELETE");
        this.LIKE_QUOTE = String.literal(" LIKE \"");
        this.INSERT_INTO = String.literal("INSERT INTO ");
        this.VALUES = String.literal(" VALUES ('");
        this.ORDER_BY = String.literal("ORDER BY");
        this.COUNT = String.literal("COUNT(");
        this.ASC = String.literal("ASC");
        this.DESC = String.literal("DESC");
        this.PRIMARY_KEY = String.literal("PRIMARY KEY(");
        this.END = String.literal(") )");
        this.EQUAL_QUOTE = String.literal(" = \"");
        this.CLOSE_QUOTE = Inheritance.upcast(?*String, CommonSeps.getInstance().?.QUOTE);
        this.EQUAL_QUOTE_NO_SPACE = String.literal("=\"");
        this.ESCAPE = String.literal("\\");
        this.DOUBLE_ESCAPE = String.literal("\\\\");
        this.MORE_THAN_QUOTE = String.literal(" > \"");
        this.LESS_THAN_QUOTE = String.literal(" < \"");
        this.SINGLE_QUOTE_COMMA_SEP = String.literal("','");
        this.ID = String.literal("ID");
        this.SQL_STATEMENT_LABEL = String.literal("SQL Statement: ");
        this.COLUMN_VALUE = String.literal("\nColumn Value: ");
        this.CREATE_RETURN = String.literal(" Created Successfully");
        this.FIELD_VALUE = String.literal("\nField Value: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*SqlStrings {
        return Inheritance.upcast(?*SqlStrings, SqlStrings.instance);
    }
};

