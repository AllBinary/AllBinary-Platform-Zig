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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GamePersistanceStrings = @import("org/allbinary/game/configuration/persistance/GamePersistanceStrings.zig").GamePersistanceStrings;
const PersistentInputMapping = @import("org/allbinary/game/input/mapping/PersistentInputMapping.zig").PersistentInputMapping;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;

pub const J2MEGameInputMapping = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.J2MEGameInputMapping";
    base: PersistentInputMapping = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PersistentInputMapping, "create1", .{ GamePersistanceStrings.getInstance().?.SAVED_INPUT_CONFIGURATION_RECORD_ID }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.INIT });
        _ = Inheritance.receiverOf(J2MEKeyFactory.getInstance().?, "init").init();
        _ = Inheritance.call(&self.base, "init", .{ abeClientInformation });
        if (Inheritance.receiver(self, "getTotalMapped").getTotalMapped() == 0 or Inheritance.receiver(self, "isDefaultNew").isDefaultNew()) {
            _ = Inheritance.call(Inheritance.receiver(self, "getInputMapping").getInputMapping().?, "addMapping", .{ Inheritance.receiver(self, "getDefault").getDefault() });
            _ = Inheritance.call(self, "save", .{ abeClientInformation });
        }
    }
    

    pub fn isDelete(self: *Self, input: ?*Input) bool {
        _ = self;
        if (Object.same(input, GameKeyFactory.getInstance().?.GAME_D)) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn isSystemInput(self: *Self, input: ?*Input) bool {
        _ = input;
        _ = self;
        return false;
    }
};

