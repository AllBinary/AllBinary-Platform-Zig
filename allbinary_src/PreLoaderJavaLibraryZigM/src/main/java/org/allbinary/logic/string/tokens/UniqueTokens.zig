//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.logic.string.tokens

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const HashSet = @import("java/util/HashSet.zig").HashSet;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const Replace = @import("org/allbinary/logic/string/regex/replace/Replace.zig").Replace;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Tokenizer = @import("org/allbinary/logic/string/tokens/Tokenizer.zig").Tokenizer;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const UniqueTokens = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.string.tokens.UniqueTokens";
    specialCharacters: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.specialCharacters = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("!") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("@") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ CommonPhoneStrings.getInstance().?.POUND });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("$") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("%") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("^") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ CommonSeps.getInstance().?.AMPERSAND });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ CommonPhoneStrings.getInstance().?.STAR });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("(") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal(")") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("-") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("_") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("+") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("=") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("\\") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("|") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ AbPathData.getInstance().?.EXTENSION_SEP });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal(",") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("<") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal(">") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("?") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("/") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("~") });
        _ = Inheritance.call(this.specialCharacters.?, "add", .{ String.literal("`") });
        return this;
    }
    

    // throws Exception
    pub fn getWhithoutDashesAndSkipNumberOnlyTokens(self: *Self, stringVector: ?*BasicArrayList) ?*HashSet {
        { // try
            const hashSet: ?*HashSet = HashSet.create();
            var index: i32 = 0;
            const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
            while (index < stringVector.?.size()) {
                const keywords: ?*String = Inheritance.cast(?*String, Inheritance.call(stringVector.?, "get", .{ index }));
                const tokenizer: ?*Tokenizer = Inheritance.callStatic(Tokenizer, "create1", .{ commonSeps.?.COMMA });
                const keywordVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(tokenizer.?, "getTokensFromString", .{ keywords, BasicArrayListD.create() }));
                {
                    var forIndex: i32 = 0;
                    while (forIndex < keywordVector.?.size()) : (forIndex += 1) {
                    var cleanString: ?*String = Inheritance.cast(?*String, Inheritance.call(keywordVector.?, "get", .{ forIndex }));
                    cleanString = Inheritance.upcast(@TypeOf(cleanString), cleanString.?.trim());
                    if (Inheritance.call(cleanString.?, "indexOf", .{ '-' }) != -1) {
                        cleanString = Inheritance.upcast(@TypeOf(cleanString), Inheritance.call(Inheritance.callStatic(Replace, "create2", .{ String.literal("-"), commonSeps.?.SPACE }), "all", .{ cleanString }));
                    }
                    _ = Inheritance.call(hashSet.?, "add", .{ cleanString });
                    if (Inheritance.call(cleanString.?, "indexOf", .{ ' ' }) != -1) {
                        const spaceTokenizer: ?*Tokenizer = Inheritance.callStatic(Tokenizer, "create1", .{ commonSeps.?.SPACE });
                        const subKeywordVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(spaceTokenizer.?, "getTokensFromString", .{ cleanString, BasicArrayListD.create() }));
                        {
                            var spaceIndex: i32 = 0;
                            while (spaceIndex < subKeywordVector.?.size()) : (spaceIndex += 1) {
                            const subCleanString: ?*String = Inheritance.cast(?*String, Inheritance.call(subKeywordVector.?, "get", .{ spaceIndex }));
                            if (!Inheritance.call(self, "isSpecialCharacter", .{ subCleanString }) and !Inheritance.call(self, "numberOnly", .{ subCleanString })) {
                                _ = Inheritance.call(hashSet.?, "add", .{ subCleanString });
                            }
                            }
                        }
                    }
                    }
                }
                index += 1;
            }
            return hashSet;
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    pub fn numberOnly(self: *Self, subCleaningString: ?*String) bool {
        _ = self;
        { // try
            _ = (std.fmt.parseInt(i32, subCleaningString.?.bytes, 10) catch @panic("java.lang.NumberFormatException"));
            return true;
        }
        // catch (NumberFormatException e):
//             return false;
    }
    

    pub fn isSpecialCharacter(self: *Self, subCleaningString: ?*String) bool {
        {
            var index: i32 = 0;
            while (index < self.specialCharacters.?.size()) : (index += 1) {
            if (Inheritance.call(subCleaningString.?, "compareTo", .{ Inheritance.cast(?*String, Inheritance.call(self.specialCharacters.?, "get", .{ index })) }) == 0) {
                return true;
            }
            }
        }
        return false;
    }
};

