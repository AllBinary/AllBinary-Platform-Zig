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
// package views.business.context.modules.storefront.generator

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformInfosData = @import("org/allbinary/logic/visual/transform/info/TransformInfosData.zig").TransformInfosData;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const GeneratorStoreFrontContextView = @import("views/business/context/modules/storefront/generator/GeneratorStoreFrontContextView.zig").GeneratorStoreFrontContextView;

pub const PreviewGeneratorStoreFrontContextView = struct {
    const Self = @This();
    pub const java_name = "views.business.context.modules.storefront.generator.PreviewGeneratorStoreFrontContextView";
    base: GeneratorStoreFrontContextView = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GeneratorStoreFrontContextView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        { // try
            const httpTransformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface());
            _ = Inheritance.call(Inheritance.receiver(httpTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ TransformInfoData.getInstance().?.PARTIAL, CommonSeps.getInstance().?.SPACE + TransformInfosData.getInstance().?.PREVIEW });
            return Inheritance.upcast(?*String, Inheritance.call(self, "view", .{ TransformInfosData.getInstance().?.PREVIEW }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

