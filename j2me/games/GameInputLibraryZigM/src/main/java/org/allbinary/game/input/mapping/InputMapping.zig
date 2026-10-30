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
// package org.allbinary.game.input.mapping

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Input = @import("org/allbinary/game/input/Input.zig").Input;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const InputToGameKeyMapping = @import("org/allbinary/game/input/mapping/InputToGameKeyMapping.zig").InputToGameKeyMapping;

pub const InputMapping = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.mapping.InputMapping";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    hashtable: ?*ABHashtable = null,
    mappedList: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        this.mappedList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getTotalMapped(self: *Self) i32 {
        return Inheritance.receiver(self.hashtable.?, "size").size();
    }
    

    pub fn isDefaultNew(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getDefault(self: *Self) ?*InputToGameKeyMapping {
        _ = self;
        return Inheritance.upcast(?*InputToGameKeyMapping, InputToGameKeyMapping.getNullInstance());
    }
    

    pub fn removeAll(self: *Self) void {
        _ = Inheritance.receiver(self.hashtable.?, "clear").clear();
        _ = self.mappedList.?.clear();
    }
    

    pub fn remove(self: *Self, input: ?*Input, mappedToInput: ?*Input) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.START_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ input }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" == ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ mappedToInput }) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("InputMapping::remove") });
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getMappedInput", .{ input }));
        if (Inheritance.call(list.?, "contains", .{ mappedToInput })) {
            _ = Inheritance.call(list.?, "remove", .{ mappedToInput });
            _ = Inheritance.call(self.mappedList.?, "remove", .{ mappedToInput });
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Removed: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ input }) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" == ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ mappedToInput }) });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("InputMapping::remove") });
        } else {
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Not Deleted: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ input }) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" == ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ mappedToInput }) });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("InputMapping::remove") });
        }
    }
    

    // throws Exception
    pub fn addMapping(self: *Self, inputToGameKeyMapping: ?*InputToGameKeyMapping) void {
        _ = inputToGameKeyMapping;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn add(self: *Self, input: ?*Input, mappedToInput: ?*Input) void {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getMappedInput", .{ input }));
        if (!Inheritance.call(list.?, "contains", .{ mappedToInput })) {
            _ = Inheritance.call(list.?, "add", .{ mappedToInput });
            _ = Inheritance.call(self.mappedList.?, "add", .{ mappedToInput });
        }
    }
    

    pub fn isMapped(self: *Self, input: ?*Input) bool {
        return Inheritance.call(self.mappedList.?, "contains", .{ input });
    }
    

    pub fn getMappedInput(self: *Self, id: ?*Input) ?*BasicArrayList {
        const mappingInputCanBeNullList: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.hashtable.?, "get", .{ id }));
        if (mappingInputCanBeNullList == null) {
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(self.hashtable.?, "put", .{ id, list });
            return list;
        }
        return Inheritance.cast(?*BasicArrayList, mappingInputCanBeNullList);
    }
    

    pub fn getHashtable(self: *Self) ?*ABHashtable {
        return self.hashtable;
    }
};

