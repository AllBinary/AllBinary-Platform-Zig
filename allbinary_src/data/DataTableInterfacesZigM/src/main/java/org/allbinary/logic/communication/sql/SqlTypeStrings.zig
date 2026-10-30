// Generated Code Do Not Modify
// package org.allbinary.logic.communication.sql

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const SqlTypeStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.sql.SqlTypeStrings";
    CHAR_COLUMN: ?*String = null,
    INT_COLUMN: ?*String = null,
    MAX_SIZE: ?*String = null,
    SIXTY_SIZE: ?*String = null,
    NOT_NULL: ?*String = null,
    ONE_SIZE: ?*String = null,
    TWO_SIZE: ?*String = null,
    THREE_SIZE: ?*String = null,
    SIX_SIZE: ?*String = null,
    ELEVEN_SIZE: ?*String = null,
    TWELVE_SIZE: ?*String = null,
    ONE_KB_CHAR_COLUMN: ?*String = null,
    MAX_CHAR_COLUMN: ?*String = null,
    MAX_CHAR_COLUMN_NOT_NULL: ?*String = null,
    SIXTY_CHAR_COLUMN_NOT_NULL: ?*String = null,
    ONE_CHAR_COLUMN_NOT_NULL: ?*String = null,
    SIX_CHAR_COLUMN_NOT_NULL: ?*String = null,
    TWELVE_CHAR_COLUMN_NOT_NULL: ?*String = null,
    TWO_INT_NOT_NULL: ?*String = null,
    THREE_INT_NOT_NULL: ?*String = null,
    FOUR_INT_NOT_NULL: ?*String = null,
    MAX_INT_NOT_NULL: ?*String = null,
    MAX_INT_UNSIGNED: ?*String = null,
    MAX_INT_UNSIGNED_NOT_NULL: ?*String = null,
    MAX_BIG_INT_NOT_NULL: ?*String = null,
    MAX_BIG_INT_UNSIGNED: ?*String = null,
    MAX_BIG_INT_UNSIGNED_NOT_NULL: ?*String = null,
    MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL: ?*String = null,
    LONG_BLOB: ?*String = null,
    BLOB: ?*String = null,
    BLOB_NOT_NULL: ?*String = null,
    var instance: ?*SqlTypeStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SqlTypeStrings.create();
    }

    fn initFields(this: *Self) void {
        this.CHAR_COLUMN = String.literal("VARCHAR");
        this.INT_COLUMN = String.literal("VARCHAR");
        this.MAX_SIZE = String.literal("(255)");
        this.SIXTY_SIZE = String.literal("(60)");
        this.NOT_NULL = String.literal("NOT NULL");
        this.ONE_SIZE = String.literal("(1)");
        this.TWO_SIZE = String.literal("(2)");
        this.THREE_SIZE = String.literal("(3)");
        this.SIX_SIZE = String.literal("(6)");
        this.ELEVEN_SIZE = String.literal("(11)");
        this.TWELVE_SIZE = String.literal("(12)");
        this.ONE_KB_CHAR_COLUMN = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ this.CHAR_COLUMN }).?, "append", .{ String.literal("(1024)") }).?, "append", .{ CommonSeps.getInstance().?.COMMA_SEP }))));
        this.MAX_CHAR_COLUMN = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ this.CHAR_COLUMN }).?, "append", .{ this.MAX_SIZE }).?, "append", .{ CommonSeps.getInstance().?.COMMA_SEP }))));
        this.MAX_CHAR_COLUMN_NOT_NULL = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ this.CHAR_COLUMN }).?, "append", .{ this.MAX_SIZE }).?, "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ this.NOT_NULL }).?, "append", .{ CommonSeps.getInstance().?.COMMA_SEP }))));
        this.SIXTY_CHAR_COLUMN_NOT_NULL = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ this.CHAR_COLUMN }).?, "append", .{ this.SIXTY_SIZE }).?, "append", .{ this.NOT_NULL }).?, "append", .{ CommonSeps.getInstance().?.COMMA_SEP }))));
        this.ONE_CHAR_COLUMN_NOT_NULL = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ this.CHAR_COLUMN }).?, "append", .{ this.ONE_SIZE }).?, "append", .{ this.NOT_NULL }).?, "append", .{ CommonSeps.getInstance().?.COMMA_SEP }))));
        this.SIX_CHAR_COLUMN_NOT_NULL = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ this.CHAR_COLUMN }).?, "append", .{ this.SIX_SIZE }).?, "append", .{ this.NOT_NULL }).?, "append", .{ CommonSeps.getInstance().?.COMMA_SEP }))));
        this.TWELVE_CHAR_COLUMN_NOT_NULL = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ this.CHAR_COLUMN }).?, "append", .{ this.TWELVE_SIZE }).?, "append", .{ this.NOT_NULL }).?, "append", .{ CommonSeps.getInstance().?.COMMA_SEP }))));
        this.TWO_INT_NOT_NULL = String.literal(" INT(2) NOT NULL, ");
        this.THREE_INT_NOT_NULL = String.literal(" INT(3) NOT NULL, ");
        this.FOUR_INT_NOT_NULL = String.literal(" INT(4) NOT NULL, ");
        this.MAX_INT_NOT_NULL = String.literal(" INT(11) NOT NULL, ");
        this.MAX_INT_UNSIGNED = String.literal(" INT(11) UNSIGNED, ");
        this.MAX_INT_UNSIGNED_NOT_NULL = String.literal(" INT(11) UNSIGNED NOT NULL, ");
        this.MAX_BIG_INT_NOT_NULL = String.literal(" BIGINT(19) NOT NULL, ");
        this.MAX_BIG_INT_UNSIGNED = String.literal(" BIGINT(19) UNSIGNED, ");
        this.MAX_BIG_INT_UNSIGNED_NOT_NULL = String.literal(" BIGINT(19) UNSIGNED NOT NULL, ");
        this.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL = String.literal(" BIGINT(19) UNSIGNED AUTO_INCREMENT NOT NULL,");
        this.LONG_BLOB = String.literal(" LONGBLOB, ");
        this.BLOB = String.literal(" BLOB, ");
        this.BLOB_NOT_NULL = String.literal(" BLOB NOT NULL, ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*SqlTypeStrings {
        return Inheritance.upcast(?*SqlTypeStrings, SqlTypeStrings.instance);
    }
};

