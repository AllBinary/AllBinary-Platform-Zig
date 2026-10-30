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
// package org.allbinary.logic.visual.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TransformInfoHttpContext = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpContext.zig").TransformInfoHttpContext;
const TransformInfoHttpStore = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpStore.zig").TransformInfoHttpStore;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;

pub const TransformInfoHttpFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) ?*TransformInfoInterface {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        { // try
            const weblisketSession: ?*WeblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ propertiesHashMap, pageContext });
            if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ weblisketSession.?.getStoreName() })) {
                const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ weblisketSession.?.getStoreName() }));
                if (storeFrontInterface != null) {
                    return Inheritance.cast(?*TransformInfoInterface, Inheritance.callStatic(TransformInfoHttpStore, "create3", .{ storeFrontInterface, propertiesHashMap, pageContext }));
                } else {
                    std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("No StoreFront with: "), weblisketSession.?.getStoreName()); break :exception error.Exception; }});
                }
            } else {
                return Inheritance.cast(?*TransformInfoInterface, Inheritance.callStatic(TransformInfoHttpContext, "create2", .{ propertiesHashMap, pageContext }));
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, String.literal("TransformInfoFactory"), commonStrings.?.GET_INSTANCE, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

