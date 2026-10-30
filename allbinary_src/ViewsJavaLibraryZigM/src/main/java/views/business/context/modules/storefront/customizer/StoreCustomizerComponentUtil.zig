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
// package views.business.context.modules.storefront.customizer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const TransformGeneratorUtil = @import("org/allbinary/logic/visual/transform/generator/TransformGeneratorUtil.zig").TransformGeneratorUtil;
const TransformInfo = @import("org/allbinary/logic/visual/transform/info/TransformInfo.zig").TransformInfo;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CustomizerUtil = @import("views/business/context/modules/storefront/customizer/CustomizerUtil.zig").CustomizerUtil;

pub const StoreCustomizerComponentUtil = struct {
    const Self = @This();
    pub const java_name = "views.business.context.modules.storefront.customizer.StoreCustomizerComponentUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*StoreCustomizerComponentUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = StoreCustomizerComponentUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*StoreCustomizerComponentUtil {
        return Inheritance.upcast(?*StoreCustomizerComponentUtil, StoreCustomizerComponentUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn generate(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface) ?*String {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Generating Modified Views For: "), Inheritance.receiver(transformInfoInterface.?, "getName").getName()), self, String.literal("generateModifiedViews()") });
        }
        const customizerUtil: ?*CustomizerUtil = Inheritance.upcast(?*CustomizerUtil, CustomizerUtil.getInstance());
        const allCustomizedViews: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(customizerUtil.?, "getTransformInfoObjectConfigGroupComponentNodes", .{ transformInfoInterface }));
        const size: i32 = allCustomizedViews.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const nextTransformInfoInterface: ?*TransformInfo = Inheritance.cast(?*TransformInfo, Inheritance.call(allCustomizedViews.?, "get", .{ index }));
            const allViewsToBeModified: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(customizerUtil.?, "getTransformInfoObjectConfigComponentNodesToCustomize", .{ transformInfoInterface, nextTransformInfoInterface }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("View or component that was modified by a Customizer: "), nextTransformInfoInterface.?.getName()), self, String.literal("generateModifiedViews()") });
            }
            _ = Inheritance.call(self, "generate", .{ abeClientInformation, transformInfoInterface, allViewsToBeModified });
            }
        }
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    // throws Exception
    pub fn generate3(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface, allViewsToBeModifiedVector: ?*BasicArrayList) void {
        const customizerUtil: ?*CustomizerUtil = Inheritance.upcast(?*CustomizerUtil, CustomizerUtil.getInstance());
        const size: i32 = allViewsToBeModifiedVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const nextTransformInfoInterface: ?*TransformInfo = Inheritance.cast(?*TransformInfo, Inheritance.call(allViewsToBeModifiedVector.?, "get", .{ index }));
            const specifiedTransformInfoInterface: ?*TransformInfoInterface = Inheritance.upcast(?*TransformInfoInterface, Inheritance.call(customizerUtil.?, "getTransformInfoInterfaceToCustomize", .{ transformInfoInterface, nextTransformInfoInterface }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Retrieved: "), Inheritance.receiver(specifiedTransformInfoInterface.?, "getName").getName()), self, String.literal("generateModifiedViews()") });
            }
            _ = Inheritance.call(TransformGeneratorUtil.getInstance().?, "generate", .{ abeClientInformation, nextTransformInfoInterface, specifiedTransformInfoInterface });
            }
        }
    }
};

