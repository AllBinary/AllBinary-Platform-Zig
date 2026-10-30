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
// package org.allbinary.game.score

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ByteArrayInputStream = @import("java/io/ByteArrayInputStream.zig").ByteArrayInputStream;
// const DataInputStream = @import("java/io/DataInputStream.zig").DataInputStream;
// const EOFException = @import("java/io/EOFException.zig").EOFException;
// const IOException = @import("java/io/IOException.zig").IOException;
// const RecordComparator = @import("javax/microedition/rms/RecordComparator.zig").RecordComparator;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Long = @import("java/lang/Long.zig").Long;

pub const ScoreComparator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.ScoreComparator";
    logUtil: ?*LogUtil = null,
    isHighestBest: bool = false,
    // Implements RecordComparator

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(isHighestBest: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.isHighestBest = isHighestBest;
        return this;
    }
    

    pub fn getBestScore(self: *Self) i64 {
        return (if (self.isHighestBest) @as(i64, std.math.maxInt(i64)) else 0);
    }
    

    pub fn compare(self: *Self, recordOne: []i8, recordTwo: []i8) i32 {
        const byteArrayInputStreamOne: ?*ByteArrayInputStream = Inheritance.callStatic(ByteArrayInputStream, "create1", .{ recordOne });
        const inputStreamOne: ?*DataInputStream = Inheritance.callStatic(DataInputStream, "create1", .{ byteArrayInputStreamOne });
        const byteArrayInputStreamTwo: ?*ByteArrayInputStream = Inheritance.callStatic(ByteArrayInputStream, "create1", .{ recordTwo });
        const inputStreamTwo: ?*DataInputStream = Inheritance.callStatic(DataInputStream, "create1", .{ byteArrayInputStreamTwo });
        var scoreOne: i64 = 0;
        var scoreTwo: i64 = 0;
        { // try
            _ = inputStreamOne.?.readUTF();
            _ = inputStreamTwo.?.readUTF();
            scoreOne = inputStreamOne.?.readLong();
            scoreTwo = inputStreamTwo.?.readLong();
        }
        // catch (EOFException e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("compare"), e });
        // catch (IOException e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("compare"), e });
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("compare"), e });
        if (self.isHighestBest) {
            return Inheritance.call(self, "getHighTooLow", .{ scoreOne, scoreTwo });
        } else {
            return Inheritance.call(self, "getLowTooHigh", .{ scoreOne, scoreTwo });
        }
    }
    

    pub fn getHighTooLow(self: *Self, scoreOne: i64, scoreTwo: i64) i32 {
        _ = self;
        if (scoreOne > scoreTwo) {
            return RecordComparator.PRECEDES;
        } else if (scoreOne < scoreTwo) {
            return RecordComparator.FOLLOWS;
        } else {
            return RecordComparator.EQUIVALENT;
        }
    }
    

    pub fn getLowTooHigh(self: *Self, scoreOne: i64, scoreTwo: i64) i32 {
        _ = self;
        if (scoreOne < scoreTwo) {
            return RecordComparator.PRECEDES;
        } else if (scoreOne > scoreTwo) {
            return RecordComparator.FOLLOWS;
        } else {
            return RecordComparator.EQUIVALENT;
        }
    }
};

