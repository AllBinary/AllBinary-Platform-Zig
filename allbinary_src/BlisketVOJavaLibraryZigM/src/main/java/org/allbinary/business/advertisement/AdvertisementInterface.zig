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
// package org.allbinary.business.advertisement

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AdvertisementImageInterface = @import("org/allbinary/business/advertisement/image/AdvertisementImageInterface.zig").AdvertisementImageInterface;
const AdvertisementProductInterface = @import("org/allbinary/business/advertisement/product/AdvertisementProductInterface.zig").AdvertisementProductInterface;
const AdvertisementThumbnailInterface = @import("org/allbinary/business/advertisement/thumbnail/AdvertisementThumbnailInterface.zig").AdvertisementThumbnailInterface;
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const DisplayInBrowserContraintsInterface = @import("org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraintsInterface.zig").DisplayInBrowserContraintsInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const AdvertisementInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.AdvertisementInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getArtistFn: *const fn (pointer: *anyopaque) ?*String,
    getArtistLinkFn: *const fn (pointer: *anyopaque) ?*String,
    getTitleFn: *const fn (pointer: *anyopaque) ?*String,
    getDateAddedFn: *const fn (pointer: *anyopaque) ?*String,
    getDirectoryFn: *const fn (pointer: *anyopaque) ?*String,
    getFramedLinkFn: *const fn (pointer: *anyopaque) ?*String,
    getListPriceFn: *const fn (pointer: *anyopaque) ?*Money,
    getOurPriceFn: *const fn (pointer: *anyopaque) ?*Money,
    getRankFn: *const fn (pointer: *anyopaque) i32,
    getImageFn: *const fn (pointer: *anyopaque) ?*AdvertisementImageInterface,
    getProductFn: *const fn (pointer: *anyopaque) ?*AdvertisementProductInterface,
    getThumbnailFn: *const fn (pointer: *anyopaque) ?*AdvertisementThumbnailInterface,
    getDisplayInBrowserContraintsInterfaceFn: *const fn (pointer: *anyopaque) ?*DisplayInBrowserContraintsInterface,
    setArtistFn: *const fn (pointer: *anyopaque, artist: ?*String) void,
    setArtistLinkFn: *const fn (pointer: *anyopaque, artistLink: ?*String) void,
    setTitleFn: *const fn (pointer: *anyopaque, title: ?*String) void,
    setDateAddedFn: *const fn (pointer: *anyopaque, dateAdded: ?*String) void,
    setDirectoryFn: *const fn (pointer: *anyopaque, directory: ?*String) void,
    setFramedLinkFn: *const fn (pointer: *anyopaque, framedLink: ?*String) void,
    setRankFn: *const fn (pointer: *anyopaque, rank: i32) void,
    setImageFn: *const fn (pointer: *anyopaque, AdvertisementImageInterface_: ?*AdvertisementImageInterface) void,
    setProductFn: *const fn (pointer: *anyopaque, AdvertisementProductInterface_: ?*AdvertisementProductInterface) void,
    setThumbnailFn: *const fn (pointer: *anyopaque, AdvertisementThumbnailInterface_: ?*AdvertisementThumbnailInterface) void,

    pub fn getArtist(self: *Self) ?*String {
        return self.getArtistFn(self.pointer);
    }

    pub fn getArtistLink(self: *Self) ?*String {
        return self.getArtistLinkFn(self.pointer);
    }

    pub fn getTitle(self: *Self) ?*String {
        return self.getTitleFn(self.pointer);
    }

    pub fn getDateAdded(self: *Self) ?*String {
        return self.getDateAddedFn(self.pointer);
    }

    pub fn getDirectory(self: *Self) ?*String {
        return self.getDirectoryFn(self.pointer);
    }

    pub fn getFramedLink(self: *Self) ?*String {
        return self.getFramedLinkFn(self.pointer);
    }

    pub fn getListPrice(self: *Self) ?*Money {
        return self.getListPriceFn(self.pointer);
    }

    pub fn getOurPrice(self: *Self) ?*Money {
        return self.getOurPriceFn(self.pointer);
    }

    pub fn getRank(self: *Self) i32 {
        return self.getRankFn(self.pointer);
    }

    pub fn getImage(self: *Self) ?*AdvertisementImageInterface {
        return self.getImageFn(self.pointer);
    }

    pub fn getProduct(self: *Self) ?*AdvertisementProductInterface {
        return self.getProductFn(self.pointer);
    }

    pub fn getThumbnail(self: *Self) ?*AdvertisementThumbnailInterface {
        return self.getThumbnailFn(self.pointer);
    }

    pub fn getDisplayInBrowserContraintsInterface(self: *Self) ?*DisplayInBrowserContraintsInterface {
        return self.getDisplayInBrowserContraintsInterfaceFn(self.pointer);
    }

    pub fn setArtist(self: *Self, artist: ?*String) void {
        return self.setArtistFn(self.pointer, artist);
    }

    pub fn setArtistLink(self: *Self, artistLink: ?*String) void {
        return self.setArtistLinkFn(self.pointer, artistLink);
    }

    pub fn setTitle(self: *Self, title: ?*String) void {
        return self.setTitleFn(self.pointer, title);
    }

    pub fn setDateAdded(self: *Self, dateAdded: ?*String) void {
        return self.setDateAddedFn(self.pointer, dateAdded);
    }

    pub fn setDirectory(self: *Self, directory: ?*String) void {
        return self.setDirectoryFn(self.pointer, directory);
    }

    pub fn setFramedLink(self: *Self, framedLink: ?*String) void {
        return self.setFramedLinkFn(self.pointer, framedLink);
    }

    pub fn setRank(self: *Self, rank: i32) void {
        return self.setRankFn(self.pointer, rank);
    }

    pub fn setImage(self: *Self, AdvertisementImageInterface_: ?*AdvertisementImageInterface) void {
        return self.setImageFn(self.pointer, AdvertisementImageInterface_);
    }

    pub fn setProduct(self: *Self, AdvertisementProductInterface_: ?*AdvertisementProductInterface) void {
        return self.setProductFn(self.pointer, AdvertisementProductInterface_);
    }

    pub fn setThumbnail(self: *Self, AdvertisementThumbnailInterface_: ?*AdvertisementThumbnailInterface) void {
        return self.setThumbnailFn(self.pointer, AdvertisementThumbnailInterface_);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getArtist(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getArtist").getArtist());
            }
            fn getArtistLink(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getArtistLink").getArtistLink());
            }
            fn getTitle(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTitle").getTitle());
            }
            fn getDateAdded(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getDateAdded").getDateAdded());
            }
            fn getDirectory(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getDirectory").getDirectory());
            }
            fn getFramedLink(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getFramedLink").getFramedLink());
            }
            fn getListPrice(pointer: *anyopaque) ?*Money {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Money, Inheritance.receiver(implementation, "getListPrice").getListPrice());
            }
            fn getOurPrice(pointer: *anyopaque) ?*Money {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Money, Inheritance.receiver(implementation, "getOurPrice").getOurPrice());
            }
            fn getRank(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getRank").getRank();
            }
            fn getImage(pointer: *anyopaque) ?*AdvertisementImageInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AdvertisementImageInterface, Inheritance.receiver(implementation, "getImage").getImage());
            }
            fn getProduct(pointer: *anyopaque) ?*AdvertisementProductInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AdvertisementProductInterface, Inheritance.receiver(implementation, "getProduct").getProduct());
            }
            fn getThumbnail(pointer: *anyopaque) ?*AdvertisementThumbnailInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AdvertisementThumbnailInterface, Inheritance.receiver(implementation, "getThumbnail").getThumbnail());
            }
            fn getDisplayInBrowserContraintsInterface(pointer: *anyopaque) ?*DisplayInBrowserContraintsInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*DisplayInBrowserContraintsInterface, Inheritance.receiver(implementation, "getDisplayInBrowserContraintsInterface").getDisplayInBrowserContraintsInterface());
            }
            fn setArtist(pointer: *anyopaque, artist: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setArtist").setArtist(artist);
            }
            fn setArtistLink(pointer: *anyopaque, artistLink: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setArtistLink").setArtistLink(artistLink);
            }
            fn setTitle(pointer: *anyopaque, title: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTitle").setTitle(title);
            }
            fn setDateAdded(pointer: *anyopaque, dateAdded: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setDateAdded").setDateAdded(dateAdded);
            }
            fn setDirectory(pointer: *anyopaque, directory: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setDirectory").setDirectory(directory);
            }
            fn setFramedLink(pointer: *anyopaque, framedLink: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setFramedLink").setFramedLink(framedLink);
            }
            fn setRank(pointer: *anyopaque, rank: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setRank").setRank(rank);
            }
            fn setImage(pointer: *anyopaque, AdvertisementImageInterface_: ?*AdvertisementImageInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setImage").setImage(AdvertisementImageInterface_);
            }
            fn setProduct(pointer: *anyopaque, AdvertisementProductInterface_: ?*AdvertisementProductInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setProduct").setProduct(AdvertisementProductInterface_);
            }
            fn setThumbnail(pointer: *anyopaque, AdvertisementThumbnailInterface_: ?*AdvertisementThumbnailInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setThumbnail").setThumbnail(AdvertisementThumbnailInterface_);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getArtistFn = Methods.getArtist, .getArtistLinkFn = Methods.getArtistLink, .getTitleFn = Methods.getTitle, .getDateAddedFn = Methods.getDateAdded, .getDirectoryFn = Methods.getDirectory, .getFramedLinkFn = Methods.getFramedLink, .getListPriceFn = Methods.getListPrice, .getOurPriceFn = Methods.getOurPrice, .getRankFn = Methods.getRank, .getImageFn = Methods.getImage, .getProductFn = Methods.getProduct, .getThumbnailFn = Methods.getThumbnail, .getDisplayInBrowserContraintsInterfaceFn = Methods.getDisplayInBrowserContraintsInterface, .setArtistFn = Methods.setArtist, .setArtistLinkFn = Methods.setArtistLink, .setTitleFn = Methods.setTitle, .setDateAddedFn = Methods.setDateAdded, .setDirectoryFn = Methods.setDirectory, .setFramedLinkFn = Methods.setFramedLink, .setRankFn = Methods.setRank, .setImageFn = Methods.setImage, .setProductFn = Methods.setProduct, .setThumbnailFn = Methods.setThumbnail };
        return this;
    }
};

