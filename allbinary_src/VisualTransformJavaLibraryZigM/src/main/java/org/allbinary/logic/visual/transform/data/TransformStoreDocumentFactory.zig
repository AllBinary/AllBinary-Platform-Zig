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
// package org.allbinary.logic.visual.transform.data

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const SearchRequest = @import("org/allbinary/logic/control/search/SearchRequest.zig").SearchRequest;
const TransformDocumentInterface = @import("org/allbinary/logic/visual/transform/data/TransformDocumentInterface.zig").TransformDocumentInterface;
const TransformStoreDocument = @import("org/allbinary/logic/visual/transform/data/TransformStoreDocument.zig").TransformStoreDocument;

pub const TransformStoreDocumentFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance2(pageContext: ?*PageContext, weblisketSession: ?*WeblisketSession) ?*TransformDocumentInterface {
        return Inheritance.cast(?*TransformDocumentInterface, Inheritance.callStatic(TransformStoreDocument, "create2", .{ pageContext, weblisketSession }));
    }
    

    // throws Exception
    pub fn getInstance(searchRequest: ?*SearchRequest) ?*TransformDocumentInterface {
        return Inheritance.cast(?*TransformDocumentInterface, Inheritance.callStatic(TransformStoreDocument, "create1", .{ searchRequest }));
    }
};

