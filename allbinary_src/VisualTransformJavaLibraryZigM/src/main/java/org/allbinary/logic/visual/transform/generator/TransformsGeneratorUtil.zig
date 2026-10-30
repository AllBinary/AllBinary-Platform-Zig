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
// package org.allbinary.logic.visual.transform.generator

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const TransformInfoDomNode = @import("org/allbinary/logic/visual/transform/info/TransformInfoDomNode.zig").TransformInfoDomNode;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformInfoObjectConfigInterface = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface.zig").TransformInfoObjectConfigInterface;
const TransformGeneratorUtil = @import("org/allbinary/logic/visual/transform/generator/TransformGeneratorUtil.zig").TransformGeneratorUtil;

pub const TransformsGeneratorUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.generator.TransformsGeneratorUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*TransformsGeneratorUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TransformsGeneratorUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*TransformsGeneratorUtil {
        return Inheritance.upcast(?*TransformsGeneratorUtil, TransformsGeneratorUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn generateComponentsFromObjectConfig(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface, group: ?*String) ?*String {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Started Group: "), group), self, String.literal("generateComponentsFromObjectConfig(2)") });
        }
        const transformInfoObjectConfigInterface: ?*TransformInfoObjectConfigInterface = Inheritance.upcast(?*TransformInfoObjectConfigInterface, Inheritance.receiver(transformInfoInterface.?, "getObjectConfigInterface").getObjectConfigInterface());
        const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(self, "generateComponentsFromObjectConfig", .{ abeClientInformation, transformInfoObjectConfigInterface, transformInfoInterface, group }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("End Group: "), group), self, String.literal("generateComponentsFromObjectConfig(2)") });
        }
        return result;
    }
    

    // throws Exception
    pub fn generateComponentsFromObjectConfig4(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, transformInfoObjectConfigInterface: ?*TransformInfoObjectConfigInterface, transformInfoInterface: ?*TransformInfoInterface, group: ?*String) ?*String {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Started Group: "), group), self, String.literal("generateComponentsFromObjectConfig()") });
        }
        const transformInfoObjectConfigComponentVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(transformInfoObjectConfigInterface.?, "getTransformsGroup", .{ group }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Processing ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ transformInfoObjectConfigComponentVector.?.size() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Components Group: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ group });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("generateComponentsFromObjectConfig()") });
        }
        if (transformInfoObjectConfigComponentVector.?.size() < 1) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No Pages Generated For Template."); break :exception error.Exception; }});
        }
        const size: i32 = transformInfoObjectConfigComponentVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const transformInfoObjectConfigComponent: ?*TransformInfoDomNode = Inheritance.cast(?*TransformInfoDomNode, Inheritance.call(transformInfoObjectConfigComponentVector.?, "get", .{ index }));
            _ = Inheritance.call(TransformGeneratorUtil.getInstance().?, "generate", .{ abeClientInformation, transformInfoObjectConfigComponent, transformInfoInterface });
            }
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Done Group: "), group), self, String.literal("generateComponentsFromObjectConfig()") });
        }
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<!-- Generated all template views successfully for View: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(transformInfoInterface.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("-->") });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

