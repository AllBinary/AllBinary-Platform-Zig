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
// package views.admin.inventory.listings

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SearchRequest = @import("org/allbinary/logic/control/search/SearchRequest.zig").SearchRequest;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ProductListing = @import("views/admin/inventory/listings/ProductListing.zig").ProductListing;
const ProductListingInterface = @import("views/admin/inventory/listings/ProductListingInterface.zig").ProductListingInterface;

pub const ProductListingFactory = struct {
    const Self = @This();
    pub const java_name = "views.admin.inventory.listings.ProductListingFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(searchRequest: ?*SearchRequest) ?*ProductListingInterface {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        { // try
            return Inheritance.cast(?*ProductListingInterface, Inheritance.callStatic(ProductListing, "create1", .{ searchRequest }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.FACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, String.literal("ProductListingFactory"), commonStrings.?.GET_INSTANCE, e });
//             }
//             return null;
    }
};

