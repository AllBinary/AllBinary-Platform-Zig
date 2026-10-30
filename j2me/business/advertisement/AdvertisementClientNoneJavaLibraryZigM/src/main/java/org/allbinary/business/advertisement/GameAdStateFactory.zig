// Generated Code Do Not Modify
// package org.allbinary.business.advertisement

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameAdState = @import("org/allbinary/game/GameAdState.zig").GameAdState;
const SoftwareInformation = @import("org/allbinary/logic/system/SoftwareInformation.zig").SoftwareInformation;
const AppNameLicensingAdConfiguration = @import("org/allbinary/business/advertisement/AppNameLicensingAdConfiguration.zig").AppNameLicensingAdConfiguration;
const GameAdStateBase = @import("org/allbinary/business/advertisement/GameAdStateBase.zig").GameAdStateBase;
const GameAdStateFactoryInterface = @import("org/allbinary/business/advertisement/GameAdStateFactoryInterface.zig").GameAdStateFactoryInterface;

pub const GameAdStateFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.GameAdStateFactory";
    pub const java_interfaces = .{ GameAdStateFactoryInterface };
    gameAdStateArray: []?*GameAdState = &.{},
    gameAdState: ?*GameAdState = null,
    // Implements GameAdStateFactoryInterface
    var instance: ?*GameAdStateFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameAdStateFactory.create();
    }

    fn initFields(this: *Self) void {
        this.gameAdStateArray = @constCast(&[_]?*GameAdState{ Inheritance.callStatic(GameAdState, "create1", .{ AppNameLicensingAdConfiguration.create() }) })[0..];
        this.gameAdState = Inheritance.upcast(?*GameAdState, this.gameAdStateArray[@intCast(0)]);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GameAdStateFactory {
        return Inheritance.upcast(?*GameAdStateFactory, GameAdStateFactory.instance);
    }
    

    pub fn getCurrentInstance(self: *Self) ?*GameAdState {
        return self.gameAdState;
    }
    

    // throws Exception
    pub fn getInstanceForApp(self: *Self, softwareInformation: ?*SoftwareInformation) ?*GameAdStateBase {
        _ = softwareInformation;
        self.gameAdState = Inheritance.upcast(@TypeOf(self.gameAdState), self.gameAdStateArray[@intCast(0)]);
        return Inheritance.upcast(?*GameAdStateBase, self.gameAdStateArray[@intCast(0)]);
    }
    

    pub fn isEnabled(self: *Self) bool {
        _ = self;
        return false;
    }
};

