//
//  Created by Anton Spivak.
//


import Foundation

private let _ton_m1_patch =
"""
diff --git a/CMakeLists.txt b/CMakeLists.txt
index a97a9c9..eaa0469 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -204,7 +204,7 @@ find_package(Threads REQUIRED)
 find_package(ZLIB REQUIRED)
 
 if (TON_ARCH AND NOT MSVC)
-  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=${TON_ARCH}")
+  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mcpu=apple-m1")
 endif()
 if (THREADS_HAVE_PTHREAD_ARG)
   set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")

""".data(using: .utf8)!

extension Resource {
    
    static let tonM1Patch = Resource(contents: _ton_m1_patch, fileName: "m1.patch")
}
