// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const RTSLayerFormFactory = @import("org/allbinary/game/input/RTSLayerFormFactory.zig").RTSLayerFormFactory;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;
const ItemArraySingletonFactoryInterface = @import("org/allbinary/graphics/form/item/ItemArraySingletonFactoryInterface.zig").ItemArraySingletonFactoryInterface;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const RTSScrollSelectionFormFactory = @import("org/allbinary/game/layer/RTSScrollSelectionFormFactory.zig").RTSScrollSelectionFormFactory;

pub const AdvancedRTSLayerFormFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.AdvancedRTSLayerFormFactory";
    base: RTSLayerFormFactory = undefined,
    logUtil: ?*LogUtil = null,
    scrollSelectionForm: ?*ScrollSelectionForm = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create2(label: ?*String, itemArrayFactoryInterface: ?*ItemArraySingletonFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = RTSLayerFormFactory.create().*;
        this.initFields();
        var scrollSelectionForm: ?*ScrollSelectionForm = Inheritance.upcast(?*ScrollSelectionForm, ScrollSelectionForm.getNullScrollSelectionForm());
        { // try
            const items: []?*ABCustomItem = itemArrayFactoryInterface.?.getItems();
            scrollSelectionForm = Inheritance.upcast(@TypeOf(scrollSelectionForm), Inheritance.callStatic(RTSScrollSelectionFormFactory, "getInstance", .{ label, items }));
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(this.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, this, commonStrings.?.CONSTRUCTOR, e });
        this.scrollSelectionForm = scrollSelectionForm;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance(self: *Self, rtsLayer: ?*RTSLayer) ?*ScrollSelectionForm {
        _ = rtsLayer;
        return self.scrollSelectionForm;
    }
};

