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
// package admin.taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const RequestMapInterface = @import("org/allbinary/logic/communication/http/request/RequestMapInterface.zig").RequestMapInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformInterface = @import("org/allbinary/logic/visual/transform/TransformInterface.zig").TransformInterface;
const ValidationViewHelper = @import("taghelpers/ValidationViewHelper.zig").ValidationViewHelper;
const HelperTag = @import("tags/HelperTag.zig").HelperTag;
const InventoryItemView = @import("views/admin/inventory/InventoryItemView.zig").InventoryItemView;
const DownloadableInventoryItemView = @import("views/admin/inventory/download/DownloadableInventoryItemView.zig").DownloadableInventoryItemView;

pub const InventoryItemViewParentTagHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.InventoryItemViewParentTagHelper";
    var instance: ?*InventoryItemViewParentTagHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = InventoryItemViewParentTagHelper.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*InventoryItemViewParentTagHelper {
        return Inheritance.upcast(?*InventoryItemViewParentTagHelper, InventoryItemViewParentTagHelper.instance);
    }
    

    // throws Exception
    pub fn getInventoryItemView(self: *Self, inventoryTag: ?*HelperTag) ?*InventoryItemView {
        if (inventoryTag != null) {
            _ = Inheritance.call(self, "checkForValidationViewHelper", .{ Inheritance.receiver(inventoryTag.?, "getHelper").getHelper() });
            const validationViewHelper: ?*ValidationViewHelper = Inheritance.cast(?*ValidationViewHelper, Inheritance.receiver(inventoryTag.?, "getHelper").getHelper());
            const viewObject: ?*TransformInterface = Inheritance.upcast(?*TransformInterface, Inheritance.receiver(validationViewHelper.?, "getViewObject").getViewObject());
            if (!Object.same(Inheritance.receiver(viewObject.?, "getTypeId").getTypeId(), InventoryItemView.TYPE_ID)) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Must have ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("InventoryItemView and not: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(Inheritance.receiver(inventoryTag.?, "getHelper").getHelper()).?.class))).?))).name) });
                std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(stringBuffer)); break :exception error.Exception; }});
            }
            return Inheritance.cast(?*InventoryItemView, viewObject);
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Must have parent tag."); break :exception error.Exception; }});
        }
    }
    

    // throws Exception
    pub fn getDownloadableInventoryItemView(self: *Self, inventoryTag: ?*HelperTag) ?*DownloadableInventoryItemView {
        if (inventoryTag != null) {
            _ = Inheritance.call(self, "checkForValidationViewHelper", .{ Inheritance.receiver(inventoryTag.?, "getHelper").getHelper() });
            const validationViewHelper: ?*ValidationViewHelper = Inheritance.cast(?*ValidationViewHelper, Inheritance.receiver(inventoryTag.?, "getHelper").getHelper());
            const viewObject: ?*TransformInterface = Inheritance.upcast(?*TransformInterface, Inheritance.receiver(validationViewHelper.?, "getViewObject").getViewObject());
            if (!Object.same(Inheritance.receiver(viewObject.?, "getTypeId").getTypeId(), DownloadableInventoryItemView.TYPE_ID)) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Must have ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("DownloadableInventoryItemView and not: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(Inheritance.receiver(inventoryTag.?, "getHelper").getHelper()).?.class))).?))).name) });
                std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(stringBuffer)); break :exception error.Exception; }});
            }
            return Inheritance.cast(?*DownloadableInventoryItemView, viewObject);
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Must have parent tag."); break :exception error.Exception; }});
        }
    }
    

    // throws Exception
    pub fn getRequestMapInterface(self: *Self, inventoryTag: ?*HelperTag) ?*RequestMapInterface {
        if (inventoryTag != null) {
            _ = Inheritance.call(self, "checkForValidationViewHelper", .{ Inheritance.receiver(inventoryTag.?, "getHelper").getHelper() });
            const validationViewHelper: ?*ValidationViewHelper = Inheritance.cast(?*ValidationViewHelper, Inheritance.receiver(inventoryTag.?, "getHelper").getHelper());
            const viewObject: ?*TransformInterface = Inheritance.upcast(?*TransformInterface, Inheritance.receiver(validationViewHelper.?, "getViewObject").getViewObject());
            if (!Object.same(Inheritance.receiver(viewObject.?, "getTypeId").getTypeId(), InventoryItemView.TYPE_ID) and !Object.same(Inheritance.receiver(viewObject.?, "getTypeId").getTypeId(), DownloadableInventoryItemView.TYPE_ID)) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Must have ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("specific TYPE_ID and not: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(Inheritance.receiver(inventoryTag.?, "getHelper").getHelper()).?.class))).?))).name) });
                std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(stringBuffer)); break :exception error.Exception; }});
            }
            return Inheritance.cast(?*RequestMapInterface, viewObject);
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Must have parent tag."); break :exception error.Exception; }});
        }
    }
    

    // throws Exception
    pub fn checkForValidationViewHelper(self: *Self, helperObject: ?Object) void {
        _ = self;
        if (!(Object.instanceOf(Object.of(helperObject), ValidationViewHelper))) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Must have ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("ValidationViewHelper") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("and not: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(helperObject).?.class))).?))).name) });
            std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(stringBuffer)); break :exception error.Exception; }});
        }
    }
};

