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
// package org.allbinary.business.advertisement.area

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const DisplayInBrowserContraints = @import("org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraints.zig").DisplayInBrowserContraints;
const DisplayInBrowserContraintsInterface = @import("org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraintsInterface.zig").DisplayInBrowserContraintsInterface;
const TwoDimensionalConstraint = @import("org/allbinary/logic/control/contraints/size/TwoDimensionalConstraint.zig").TwoDimensionalConstraint;
const TwoDimensionalConstraintInterface = @import("org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface.zig").TwoDimensionalConstraintInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const AdvertisementAreaConstraintsInterface = @import("org/allbinary/business/advertisement/area/AdvertisementAreaConstraintsInterface.zig").AdvertisementAreaConstraintsInterface;
const AdvertisementAreaData = @import("org/allbinary/business/advertisement/area/AdvertisementAreaData.zig").AdvertisementAreaData;

pub const AdvertisementAreaConstraints = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.area.AdvertisementAreaConstraints";
    pub const java_interfaces = .{ AdvertisementAreaConstraintsInterface };
    displayInBrowserContraintsInterface: ?*DisplayInBrowserContraintsInterface = null,
    twoDimensionConstraintsInterface: ?*TwoDimensionalConstraintInterface = null,
    // Implements AdvertisementAreaConstraintsInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create1(document: ?*Document) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ AdvertisementAreaData.getInstance().?.NAME, document.?.getChildNodes() }));
        this.displayInBrowserContraintsInterface = Inheritance.upcast(@TypeOf(this.displayInBrowserContraintsInterface), Inheritance.callStatic(DisplayInBrowserContraints, "create1", .{ node }));
        this.twoDimensionConstraintsInterface = Inheritance.upcast(@TypeOf(this.twoDimensionConstraintsInterface), Inheritance.callStatic(TwoDimensionalConstraint, "create1", .{ node }));
        return this;
    }
    

    pub fn setDisplayInBrowserContraints(self: *Self, displayInBrowserContraintsInterface: ?*DisplayInBrowserContraintsInterface) void {
        self.displayInBrowserContraintsInterface = displayInBrowserContraintsInterface;
    }
    

    pub fn getTwoDimensionContraints1(self: *Self, twoDimensionConstraintsInterface: ?*TwoDimensionalConstraintInterface) void {
        self.twoDimensionConstraintsInterface = twoDimensionConstraintsInterface;
    }
    

    pub fn getDisplayInBrowserContraints(self: *Self) ?*DisplayInBrowserContraintsInterface {
        return self.displayInBrowserContraintsInterface;
    }
    

    pub fn getTwoDimensionContraints(self: *Self) ?*TwoDimensionalConstraintInterface {
        return self.twoDimensionConstraintsInterface;
    }
};

