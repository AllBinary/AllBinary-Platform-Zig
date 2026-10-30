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
// package org.allbinary.game.ag.ai

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ArtificialIntelligenceInterface = @import("org/allbinary/ai/ArtificialIntelligenceInterface.zig").ArtificialIntelligenceInterface;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const NumberInSameGroupSequence = @import("org/allbinary/game/ag/ai/NumberInSameGroupSequence.zig").NumberInSameGroupSequence;
const NumberOnOwnGroupSequenceAI = @import("org/allbinary/game/ag/ai/NumberOnOwnGroupSequenceAI.zig").NumberOnOwnGroupSequenceAI;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const NumberOnOwnGroupSequenceAIFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAIFactory";
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, hashtable: ?*ABHashtable, artificialIntelligenceInterface: []?*ArtificialIntelligenceInterface, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) ?*ArtificialIntelligenceInterface {
        const integerArray: []?*Integer = NumberInSameGroupSequence.getInstance().?.NUMBER_ON_SAME_TEAM_SEQUENCE;
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(integerArray.len))) : (index += 1) {
            const integerCanBeNull: ?Object = Inheritance.upcast(?Object, Inheritance.call(hashtable.?, "get", .{ Inheritance.cast(?Object, integerArray[@intCast(index)]) }));
            if (integerCanBeNull == null) {
                break;
            }
            _ = Inheritance.call(list.?, "add", .{ integerCanBeNull });
            }
        }
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Total AI Properties: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ list.?.size() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" == Total AI: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(artificialIntelligenceInterface.len)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" + 1") });
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, commonStrings.?.GET_INSTANCE });
        if (@as(i32, @intCast(artificialIntelligenceInterface.len)) - 1 > list.?.size()) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not enough AI properties."); break :exception error.Exception; }});
        }
        if (@as(i32, @intCast(artificialIntelligenceInterface.len)) - 1 < list.?.size()) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Too Many AI properties."); break :exception error.Exception; }});
        }
        const numberOnSameTeam: []?*Integer = array_N66708: { const array_N66708_array = allocator.alloc(?*Integer, @intCast(list.?.size())) catch unreachable; @memset(array_N66708_array, null); break :array_N66708 array_N66708_array; };
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(numberOnSameTeam.len))) : (index += 1) {
            numberOnSameTeam[@intCast(index)] = Inheritance.cast(?*Integer, list.?.objectArray[@intCast(index)]);
            }
        }
        return Inheritance.upcast(?*ArtificialIntelligenceInterface, Inheritance.callStatic(NumberOnOwnGroupSequenceAI, "create4", .{ numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput }));
    }
};

