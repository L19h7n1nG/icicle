#pragma once
#ifndef BLS12_377_SCALAR_PARAMS_H
#define BLS12_377_SCALAR_PARAMS_H

#include "fields/storage.cuh"
#include "fields/field.cuh"
#include "fields/quadratic_extension.cuh"

namespace bls12_377 {
  struct fp_config {
    static constexpr unsigned limbs_count = 8;
    static constexpr unsigned omegas_count = 47;
    static constexpr unsigned modulus_bit_count = 253;
    static constexpr unsigned num_of_reductions = 1;

    static constexpr storage<limbs_count> modulus = {0x00000001, 0x0a118000, 0xd0000001, 0x59aa76fe,
                                                     0x5c37b001, 0x60b44d1e, 0x9a2ca556, 0x12ab655e};
    static constexpr storage<limbs_count> modulus_2 = {0x00000002, 0x14230000, 0xa0000002, 0xb354edfd,
                                                       0xb86f6002, 0xc1689a3c, 0x34594aac, 0x2556cabd};
    static constexpr storage<limbs_count> modulus_4 = {0x00000004, 0x28460000, 0x40000004, 0x66a9dbfb,
                                                       0x70dec005, 0x82d13479, 0x68b29559, 0x4aad957a};
    static constexpr storage<limbs_count> neg_modulus = {0xffffffff, 0xf5ee7fff, 0x2ffffffe, 0xa6558901,
                                                         0xa3c84ffe, 0x9f4bb2e1, 0x65d35aa9, 0xed549aa1};
    static constexpr storage<2 * limbs_count> modulus_wide = {
      0x00000001, 0x0a118000, 0xd0000001, 0x59aa76fe, 0x5c37b001, 0x60b44d1e, 0x9a2ca556, 0x12ab655e,
      0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000};
    static constexpr storage<2 * limbs_count> modulus_squared = {
      0x00000001, 0x14230000, 0xe0000002, 0xc7dd4d2f, 0x8585d003, 0x08ee1bd4, 0xe57fc56e, 0x7e7557e3,
      0x483a709d, 0x1fdebb41, 0x5678f4e6, 0x8ea77334, 0xc19c3ec5, 0xd717de29, 0xe2340781, 0x015c8d01};
    static constexpr storage<2 * limbs_count> modulus_squared_2 = {
      0x00000002, 0x28460000, 0xc0000004, 0x8fba9a5f, 0x0b0ba007, 0x11dc37a9, 0xcaff8adc, 0xfceaafc7,
      0x9074e13a, 0x3fbd7682, 0xacf1e9cc, 0x1d4ee668, 0x83387d8b, 0xae2fbc53, 0xc4680f03, 0x02b91a03};
    static constexpr storage<2 * limbs_count> modulus_squared_4 = {
      0x00000004, 0x508c0000, 0x80000008, 0x1f7534bf, 0x1617400f, 0x23b86f52, 0x95ff15b8, 0xf9d55f8f,
      0x20e9c275, 0x7f7aed05, 0x59e3d398, 0x3a9dccd1, 0x0670fb16, 0x5c5f78a7, 0x88d01e07, 0x05723407};

    static constexpr storage<limbs_count> m = {0x151e79ea, 0xf5204c21, 0x8d69e258, 0xfd0a180b,
                                               0xfaa80548, 0xe4e51e49, 0xc40b2c9e, 0x36d9491e};
    static constexpr storage<limbs_count> one = {0x00000001, 0x00000000, 0x00000000, 0x00000000,
                                                 0x00000000, 0x00000000, 0x00000000, 0x00000000};
    static constexpr storage<limbs_count> zero = {0x00000000, 0x00000000, 0x00000000, 0x00000000,
                                                  0x00000000, 0x00000000, 0x00000000, 0x00000000};
    static constexpr storage<limbs_count> montgomery_r = {0xfffffff3, 0x7d1c7fff, 0x6ffffff2, 0x7257f50f,
                                                          0x512c0fee, 0x16d81575, 0x2bbb9a9d, 0x0d4bda32};
    static constexpr storage<limbs_count> montgomery_r_inv = {0x1beeec02, 0x4122dd1a, 0x74fee875, 0xbd1eae95,
                                                              0x27b28e2f, 0x838557e2, 0x2290c02c, 0x07b30191};

    static constexpr storage_array<omegas_count, limbs_count> omega = {
      {{0x00000000, 0x0a118000, 0xd0000001, 0x59aa76fe, 0x5c37b001, 0x60b44d1e, 0x9a2ca556, 0x12ab655e},
       {0x00000001, 0x8f1a4000, 0xb0000001, 0xcf664765, 0x970dec00, 0x23ed1347, 0x00000000, 0x00000000},
       {0xfbfa0a01, 0x0f830f7e, 0xd75769a0, 0x20f8b46c, 0xf05d5033, 0x7108bd18, 0x0788de01, 0x07405e08},
       {0x60b9bdae, 0xc78085a6, 0x789094f5, 0x3116ec22, 0xce87d660, 0x0a02a81d, 0xc2a94856, 0x0ead8236},
       {0x3e83a7cc, 0x6ffc39d9, 0x958a0a74, 0x117d996e, 0x0b92e8c9, 0xc242289d, 0x29d977d6, 0x0484efb4},
       {0x0111ec3f, 0x15455b00, 0xc5f6be6f, 0x6b62d7af, 0x337f2d07, 0xfcba0365, 0x43fccd26, 0x0f151842},
       {0xc31ec69b, 0x57951b2e, 0x2a37ce1f, 0x3e0a4be7, 0xcf3b198a, 0x960aeb4a, 0x341fd5cd, 0x04fb0673},
       {0xa921851f, 0x71c1b78e, 0x7808f239, 0x3c26340c, 0x976fb990, 0xbcc8f69b, 0xe880dc71, 0x06a5edb2},
       {0xc0f5679e, 0x7619eab5, 0x0dc0b9cd, 0x1f4cd10e, 0xbf6a480a, 0x7e1b70aa, 0x7f5461bb, 0x0ffc66da},
       {0xec5cbab2, 0x8159806d, 0x498264a3, 0x14ea1333, 0xe3abfaa6, 0x56bbe1d8, 0x02aa031f, 0x09d2b5c4},
       {0xc010c48a, 0xd2aa9562, 0x3b004b60, 0x447e5c11, 0x11e243bb, 0xd5a21c13, 0x0ab418b1, 0x01eab23e},
       {0xacff6986, 0x08715ee8, 0xa93924d0, 0xab01878a, 0x6e9ae5c4, 0xbfbc5e71, 0x26b08d6e, 0x0f8000bf},
       {0x3ddbc679, 0x06bc13b0, 0x615256ce, 0x7269a1f1, 0x1f5221a2, 0xf7716fbf, 0x8c66c14f, 0x0fa1f02c},
       {0x906f531f, 0xdd40f131, 0x30728eff, 0xb06b29c7, 0x88839294, 0xc891fd19, 0x646978e8, 0x04e88447},
       {0x6e259cdc, 0xb1e4b769, 0x00514e5e, 0xbcb0b709, 0x05113e7f, 0x74edb7c0, 0xe92e22af, 0x10c88511},
       {0x240ede5b, 0xebb2e898, 0x42cd84c6, 0xc2639185, 0x9408f956, 0xf79e8391, 0x94e87a7d, 0x06872fa1},
       {0x260678ff, 0xf8522249, 0xa8de9973, 0x6148cb16, 0x5a4e8d56, 0x5750f3f4, 0xbaeaf0c3, 0x0e805156},
       {0x3d766f80, 0x1b4b71cf, 0x1069012d, 0x47d21195, 0x9151ebec, 0x5635235f, 0x2b13c808, 0x093f7d91},
       {0x4637701d, 0x0848f958, 0x4c8353af, 0x8a750076, 0x0ef6174a, 0x485f4e4f, 0xf38db632, 0x078d97a1},
       {0x66a16869, 0x50c487c1, 0xd1fd4525, 0x380a66ab, 0x265e8539, 0xd455a01a, 0x064b5334, 0x0cd62875},
       {0x3358eb25, 0xdbc547bc, 0x722037db, 0x8909d398, 0x5e705b6d, 0x8b7075b5, 0x9bdaf407, 0x02694bb2},
       {0xf45b9621, 0x102fbfb0, 0xf04faac0, 0xe80f4241, 0x7ca61177, 0x0b830bfd, 0x7033169d, 0x10521892},
       {0xcc943028, 0xed2576ad, 0xfa4c6090, 0x846e49bc, 0x0049d8e6, 0xc74c1865, 0x665d7be5, 0x0e9c5a12},
       {0xafeb494b, 0x97319dcd, 0x1d78404c, 0xab30c83e, 0xf26ffe90, 0x452d8a48, 0xa36452c7, 0x0bfc2e92},
       {0xedc626c3, 0xf30e312d, 0xcf1f3a94, 0x8367a7ca, 0x917a1b28, 0x621e15e1, 0xf2e93b82, 0x07cd59f8},
       {0xf02ba42c, 0x553085d9, 0x1119b10d, 0x59662159, 0x6b8ea03f, 0xaa670958, 0x7ce92983, 0x066f6f5f},
       {0x4dd87a5e, 0xf423a283, 0xd9a4c364, 0x1fe46601, 0xbfdc7e9b, 0xda4addbf, 0x3bf94b2b, 0x0a7f2bd8},
       {0xe5f8848a, 0x270a2326, 0xa727567d, 0x97d14afa, 0x48746fc7, 0x1a3a5a4e, 0xa42f077a, 0x0044e4b1},
       {0x20b7298a, 0xd7652451, 0x65013b06, 0xc7c9a0b7, 0xad0d8457, 0x479b82a9, 0x0c99f5ce, 0x0bef1e5a},
       {0x1912f7fa, 0x77d7da1d, 0x299fd7d6, 0xbcb7a5b2, 0x142a4480, 0x705e45dd, 0xb492dbd8, 0x0dc835fd},
       {0xa0234d2d, 0xe943054c, 0xe5f5be5e, 0x673b0ee0, 0x5048a19a, 0xcdd48e41, 0xabc3cb99, 0x0997d277},
       {0xa9966ac4, 0x1ae0ea67, 0xda83fb3b, 0x4e2dbb1c, 0x0b51380e, 0xf77cf749, 0xb28a7670, 0x048b4b0e},
       {0xb14361d4, 0x7f1db43f, 0x25ab6d51, 0x7927e578, 0x383bf21e, 0xb43e52a5, 0xd27fa99f, 0x077595e9},
       {0xa90a2740, 0xfe3ca4f0, 0x512a7c7a, 0xd259ff36, 0xb41fe696, 0xbca3176a, 0xf33132ce, 0x05bd5ea3},
       {0xf284f768, 0xdeee484b, 0xe26a0475, 0x2a02e015, 0x88d968c2, 0xf0eb4925, 0x82a391c9, 0x0620ce9e},
       {0xbd83a3da, 0xd3b69b29, 0xe02ce197, 0x9543950f, 0xc2f87783, 0x80799665, 0xc15be215, 0x11ce8199},
       {0x1b29736e, 0x8f267f19, 0x1d5a0c3a, 0xa2e04d58, 0x1ae99514, 0x76803064, 0x57f7c806, 0x12129439},
       {0xf32d6bac, 0xa0b973d4, 0xf0d81b72, 0xae951889, 0x2e2daa0a, 0x51dbe098, 0x40d9af8f, 0x04679474},
       {0x22df9f13, 0x56313de8, 0x599e7536, 0xe2e75200, 0x6d163e50, 0xa1b4fce7, 0xc8111763, 0x0aec2172},
       {0x355dd694, 0x4258374d, 0x44c76a20, 0x5c31e8ac, 0xaa5fd062, 0x9b473969, 0x1a37b6b4, 0x0a693d77},
       {0x44ddbbdc, 0xbafb92a6, 0x26b01974, 0x63c7a02d, 0x5f28a274, 0x0ff86e13, 0x867f2e29, 0x0a7b462a},
       {0xd5fba57b, 0x90684fea, 0xe0defe98, 0xed237883, 0x030ae924, 0xc502b692, 0xe7a1ec2c, 0x08aa58e8},
       {0x5e9020dd, 0xade9d4b4, 0x87db8813, 0x489259d2, 0x25051238, 0x5ddce740, 0xb5bc4d11, 0x0c775db1},
       {0x293f8481, 0xd52cc17a, 0x6f133205, 0x041178fb, 0xb2961832, 0xbbc70d18, 0x481760cd, 0x073d34d1},
       {0xfdacff58, 0x8215b91d, 0x98331645, 0xd8d9177d, 0x439e803c, 0xe85223ad, 0xcca42c1f, 0x04aa8ef0},
       {0x01ab3a4d, 0x006f60fa, 0x814ba450, 0xe6600e15, 0xdf9eb147, 0xbde4df36, 0x33760d7b, 0x055d58fa},
       {0xec2a895e, 0x476ef4a4, 0x63e3f04a, 0x9b506ee3, 0xd1a8a12f, 0x60c69477, 0x0cb92cc1, 0x11d4b7f6}}};

    static constexpr storage_array<omegas_count, limbs_count> omega_inv = {
      {{0x00000000, 0x0a118000, 0xd0000001, 0x59aa76fe, 0x5c37b001, 0x60b44d1e, 0x9a2ca556, 0x12ab655e},
       {0x00000000, 0x7af74000, 0x1fffffff, 0x8a442f99, 0xc529c400, 0x3cc739d6, 0x9a2ca556, 0x12ab655e},
       {0xd60fb046, 0xc9fa190c, 0xc5b4674e, 0xdb5c179b, 0xbc7b8726, 0x2b2bce0b, 0xbf6e69bf, 0x0e4eb338},
       {0x8ffc4ed5, 0x74732d1f, 0xb7f2eefc, 0x42d9f590, 0xa24dd4dd, 0xf70461e5, 0xef64676f, 0x03b6eba4},
       {0x102bbab0, 0x5a21f98a, 0x8d8e2efb, 0xa6a147a9, 0x7612906f, 0x0eb4f005, 0x47d8d2e3, 0x0e1a5481},
       {0xd01e5aa8, 0x6e509add, 0x6e3f123d, 0xe1582468, 0x8274db24, 0xbd6313ee, 0xd173a634, 0x05d5836e},
       {0xe975c0cf, 0x6aab3344, 0x6f1dc38e, 0xca362e0e, 0x1dd1743a, 0x2fe72cda, 0xc1b4c4c2, 0x0c1c956e},
       {0xec89a64f, 0x59fe97a0, 0xe8de5d4c, 0x579617d7, 0xc9c1ea7b, 0x256a305b, 0x53fa131b, 0x01ffae4e},
       {0x29bcb088, 0x463a73ff, 0xe1438e80, 0xee9e9a5e, 0x3c9369e4, 0x2a00951f, 0x80a32052, 0x09711183},
       {0x4bec8dd2, 0xa36899db, 0x96393687, 0x2946872e, 0x842df3c8, 0xd4b5734f, 0x5f5cd8fb, 0x0834098f},
       {0xe3c711b9, 0x4bc485f6, 0x648d1d7e, 0xf43a2598, 0xee88abaa, 0x7f981a0e, 0xec6a3f27, 0x0c88c9c3},
       {0x49046b52, 0x42bcc6c2, 0x56ab9ecc, 0xcc77294a, 0xe4df3ddd, 0x02ecb41a, 0x67f76726, 0x0e567d22},
       {0x91c64fc2, 0x1cc56cc3, 0xd16a490b, 0x8cb71e65, 0x14fac366, 0x984be37e, 0xa25d7ba5, 0x0a08e032},
       {0xd4f5941e, 0x966d9739, 0xe5772a73, 0x5805deb6, 0x5c1f970c, 0xe4eb0d33, 0xbdf35409, 0x039715db},
       {0xcc6518ac, 0x8419686c, 0x9c7a2366, 0x96dec3a8, 0x71724384, 0xefbfcac6, 0xaf34c239, 0x0c44b99a},
       {0xc18ff4fd, 0xcb66fe1b, 0x86c8d586, 0x588e18b3, 0x1dfab57c, 0xc6e6d2a3, 0x7d7d4efd, 0x10918ad2},
       {0x97a18f58, 0x56d6cf22, 0xd0d7abd9, 0x11710758, 0x5eb7a9c5, 0xd1a6608b, 0xc4937e38, 0x04059bdb},
       {0x4b1b63a9, 0x12998cbc, 0xcf420c9f, 0x0f780c6c, 0x129289ad, 0xa5e48723, 0x240a141d, 0x0a3a1223},
       {0x00db2b48, 0xa43c0e02, 0x933d10ee, 0x76585489, 0xc0ba6a80, 0x12d64af1, 0x2fad8d8e, 0x01940f43},
       {0x1d75bec9, 0xe29ef6c0, 0xd4b0183b, 0xead287a2, 0xedfd3795, 0x75a017cf, 0x64427c8e, 0x107f8d0f},
       {0xa26c8c12, 0xa6f4e1d1, 0xf6610f7e, 0x13571553, 0x56701caf, 0xd95e5df6, 0x2263d69d, 0x050e7b89},
       {0xc161761f, 0x271d7caf, 0xc369a371, 0xf1001d6f, 0x00e60f51, 0x65286415, 0xb74d14b8, 0x00b918f9},
       {0x03ad3139, 0x01d3f431, 0xa137ce16, 0xe56f6002, 0x1deb42e8, 0x97f53369, 0xaa37cddd, 0x033fa9ac},
       {0x60cf1330, 0x840f913b, 0x1df5ed87, 0x5610cde6, 0x72b36ddf, 0x858381b0, 0x6f64e0b7, 0x109bf66c},
       {0x930cee0b, 0x432d3626, 0xf26e8ba3, 0x55ed3efb, 0x14c5457f, 0x802eebcc, 0xe2310f22, 0x00d300e3},
       {0x4b9ac952, 0x3d29f5ba, 0xc8ea8f94, 0x7c7f2662, 0xcefc3052, 0x736ccb63, 0x0981f3cb, 0x04bfce2f},
       {0x5d4e643c, 0x3da791ea, 0x85bff013, 0xb6a956ef, 0xd73de6a3, 0x86c629a8, 0x6b8c48a9, 0x0a5a5f55},
       {0x49c6284a, 0x9ba6aa00, 0xeacbdc63, 0x0b8429fb, 0xedafdf37, 0x9b9c6c5b, 0xad0c78c6, 0x009907e8},
       {0x3e47b53f, 0x50380ce2, 0x3a9613fc, 0x6ea3c2d3, 0x4c87ab50, 0xfe743105, 0xd192221c, 0x07871979},
       {0xe978594b, 0x4ddd3320, 0x3abe3f79, 0xe5f36fbe, 0xe4dcff8e, 0x5dba9ef2, 0x7105148f, 0x0bfc27e2},
       {0x498fb549, 0xd5993cd5, 0x09da9272, 0x718adcee, 0x72bd5bc0, 0x9e03cbb4, 0xc592813f, 0x07206942},
       {0x78fd3239, 0xaf29730b, 0x40c3e723, 0xbd907ac9, 0x77f214f7, 0x5dcc0aad, 0xb05fb3a1, 0x02d958da},
       {0xdf80223d, 0x55f432c9, 0x11a2fed9, 0x23daf2f6, 0x41ae8c34, 0x9e43e003, 0x95f22373, 0x0d51533b},
       {0x7998b62c, 0xbb53132b, 0x22c9b4aa, 0x064a9186, 0x71d61334, 0xd56de253, 0x04e416f6, 0x10fcf25f},
       {0xdddb58ec, 0x41f8042f, 0x10886d85, 0x7dd54384, 0x622ff4b4, 0x19544f90, 0x050cc539, 0x02f0b49a},
       {0xa39b02a3, 0x8a3de898, 0xdc94422c, 0x068b2992, 0xf493db31, 0x1c5f019a, 0x11b0f668, 0x066b1790},
       {0x78500f1a, 0x98310dd7, 0x735ccb27, 0x1c6050bf, 0xb2081df4, 0x07b6fa7f, 0xfa0f1e20, 0x003edf24},
       {0x89b0ca6f, 0xb4d938e2, 0x2c897570, 0x0214eb59, 0x2d4cf27a, 0x56c45327, 0x3ed546a4, 0x10a2f358},
       {0xef01ed78, 0xf2828212, 0xf103c9ca, 0xa66094ac, 0x7a2d5573, 0xdceb481d, 0x8af46aab, 0x0190fcde},
       {0x526bf9fc, 0x023031cc, 0x79c209ba, 0x0e4136c0, 0x3ec42e5c, 0xe5234df1, 0x1d455234, 0x00cb9592},
       {0x33bf2a1c, 0x842b0c9c, 0xa29b9236, 0x1fd43c95, 0xc06795d3, 0x6b37a603, 0x0c1b712a, 0x00017b17},
       {0xaf858193, 0x2b955be2, 0x5fb5e378, 0xa513d8be, 0xa326aeb9, 0x88c4ebeb, 0xf3d45990, 0x00c378e2},
       {0x6464580f, 0x33e6c8c0, 0x3c4aa09f, 0x9d560eb3, 0xcc98f404, 0xb3f1a899, 0x8ca24b48, 0x012c1ea5},
       {0xe3b4dc56, 0xa0594a67, 0x91b698e1, 0xc8e6b582, 0x8df78057, 0x711cadbf, 0x396466f8, 0x0049abdf},
       {0x4ffa086a, 0xecc89610, 0xca06afc6, 0x4db82291, 0x8f3a6426, 0x9ae7c68c, 0x2a874432, 0x0b3dae8c},
       {0x3b3625b6, 0x1e62401f, 0x28471e5a, 0xd0692164, 0x5cad6b77, 0xb85aa9ec, 0xaa95acf2, 0x063e4b66},
       {0xb9112c51, 0x2542c2b2, 0x6e23b3ce, 0x36ead8da, 0x76476754, 0x9a268d13, 0xa1ad7cf1, 0x121f44ad}}};

    static constexpr storage_array<omegas_count, limbs_count> inv = {
      {{0x00000001, 0x8508c000, 0x68000000, 0xacd53b7f, 0x2e1bd800, 0x305a268f, 0x4d1652ab, 0x0955b2af},
       {0x00000001, 0xc78d2000, 0x1c000000, 0x033fd93f, 0xc529c401, 0xc88739d6, 0xf3a17c00, 0x0e008c06},
       {0x00000001, 0xe8cf5000, 0xf6000000, 0x2e75281e, 0x90b0ba01, 0x949dc37a, 0xc6e710ab, 0x1055f8b2},
       {0x00000001, 0xf9706800, 0xe3000000, 0x440fcf8e, 0x76743501, 0xfaa9084c, 0xb089db00, 0x1180af08},
       {0x00000001, 0x01c0f400, 0xd9800001, 0x4edd2346, 0x6955f281, 0xadaeaab5, 0xa55b402b, 0x12160a33},
       {0x00000001, 0x05e93a00, 0xd4c00001, 0x5443cd22, 0xe2c6d141, 0x07317be9, 0x1fc3f2c1, 0x1260b7c9},
       {0x00000001, 0x07fd5d00, 0xd2600001, 0x56f72210, 0x1f7f40a1, 0xb3f2e484, 0xdcf84c0b, 0x12860e93},
       {0x00000001, 0x09076e80, 0xd1300001, 0x5850cc87, 0x3ddb7851, 0x0a5398d1, 0x3b9278b1, 0x1298b9f9},
       {0x00000001, 0x098c7740, 0x50980001, 0x58fda1c3, 0xcd099429, 0xb583f2f7, 0xeadf8f03, 0x12a20fab},
       {0x00000001, 0x09cefba0, 0x104c0001, 0x59540c61, 0x14a0a215, 0x0b1c200b, 0x42861a2d, 0x12a6ba85},
       {0x00000001, 0x09f03dd0, 0xf0260001, 0x597f41af, 0xb86c290b, 0xb5e83694, 0xee595fc1, 0x12a90ff1},
       {0x00000001, 0x0a00dee8, 0x60130001, 0x5994dc57, 0x8a51ec86, 0x0b4e41d9, 0x4443028c, 0x12aa3aa8},
       {0x00000001, 0x0a092f74, 0x18098001, 0xd99fa9ab, 0xf344ce43, 0x3601477b, 0x6f37d3f1, 0x12aad003},
       {0x00000001, 0x0a0d57ba, 0xf404c001, 0x99a51054, 0x27be3f22, 0xcb5aca4d, 0x04b23ca3, 0x12ab1ab1},
       {0x00000001, 0x0a0f6bdd, 0xe2026001, 0xf9a7c3a9, 0xc1faf791, 0x16078bb5, 0xcf6f70fd, 0x12ab4007},
       {0x80000001, 0x0a1075ee, 0x59013001, 0xa9a91d54, 0x0f1953c9, 0xbb5dec6a, 0x34ce0b29, 0x12ab52b3},
       {0x40000001, 0x0a10faf7, 0x94809801, 0x81a9ca29, 0x35a881e5, 0x0e091cc4, 0xe77d5840, 0x12ab5c08},
       {0xa0000001, 0x0a113d7b, 0x32404c01, 0x6daa2094, 0x48f018f3, 0x375eb4f1, 0xc0d4fecb, 0x12ab60b3},
       {0xd0000001, 0x0a115ebd, 0x81202601, 0x63aa4bc9, 0xd293e47a, 0xcc098107, 0x2d80d210, 0x12ab6309},
       {0xe8000001, 0x0a116f5e, 0x28901301, 0xdeaa6164, 0x1765ca3d, 0x965ee713, 0xe3d6bbb3, 0x12ab6433},
       {0x74000001, 0x0a1177af, 0x7c480981, 0x9c2a6c31, 0xb9cebd1f, 0xfb899a18, 0x3f01b084, 0x12ab64c9},
       {0xba000001, 0x0a117bd7, 0x262404c1, 0x7aea7198, 0x8b033690, 0xae1ef39b, 0xec972aed, 0x12ab6513},
       {0xdd000001, 0x0a117deb, 0x7b120261, 0xea4a744b, 0xf39d7348, 0x0769a05c, 0x4361e822, 0x12ab6539},
       {0xee800001, 0x0a117ef5, 0x25890131, 0x21fa75a5, 0xa7ea91a5, 0x340ef6bd, 0xeec746bc, 0x12ab654b},
       {0xf7400001, 0x0a117f7a, 0xfac48099, 0x3dd27651, 0x021120d3, 0x4a61a1ee, 0x4479f609, 0x12ab6555},
       {0x7ba00001, 0x0a117fbd, 0x6562404d, 0x4bbe76a8, 0x2f24686a, 0xd58af786, 0xef534daf, 0x12ab6559},
       {0xbdd00001, 0x0a117fde, 0x9ab12027, 0xd2b476d3, 0x45ae0c35, 0x1b1fa252, 0x44bff983, 0x12ab655c},
       {0x5ee80001, 0x0a117fef, 0x35589014, 0x962f76e9, 0x50f2de1b, 0xbde9f7b8, 0x6f764f6c, 0x12ab655d},
       {0xaf740001, 0x8a117ff7, 0x02ac480a, 0x77ecf6f4, 0x5695470e, 0x8f4f226b, 0x04d17a61, 0x12ab655e},
       {0xd7ba0001, 0xca117ffb, 0x69562405, 0xe8cbb6f9, 0xd9667b87, 0xf801b7c4, 0x4f7f0fdb, 0x12ab655e},
       {0xebdd0001, 0x6a117ffd, 0x1cab1203, 0xa13b16fc, 0x9acf15c4, 0x2c5b0271, 0x74d5da99, 0x12ab655e},
       {0xf5ee8001, 0x3a117ffe, 0x76558902, 0xfd72c6fd, 0xfb8362e2, 0xc687a7c7, 0x87813ff7, 0x12ab655e},
       {0x7af74001, 0xa2117fff, 0x232ac481, 0x2b8e9efe, 0x2bdd8972, 0x139dfa73, 0x90d6f2a7, 0x12ab655e},
       {0xbd7ba001, 0x56117fff, 0x79956241, 0xc29c8afe, 0xc40a9cb9, 0xba2923c8, 0x9581cbfe, 0x12ab655e},
       {0xdebdd001, 0x30117fff, 0xa4cab121, 0x8e2380fe, 0x9021265d, 0x8d6eb873, 0x97d738aa, 0x12ab655e},
       {0xef5ee801, 0x1d117fff, 0xba655891, 0x73e6fbfe, 0xf62c6b2f, 0x771182c8, 0x9901ef00, 0x12ab655e},
       {0xf7af7401, 0x13917fff, 0xc532ac49, 0x66c8b97e, 0xa9320d98, 0x6be2e7f3, 0x99974a2b, 0x12ab655e},
       {0xfbd7ba01, 0x0ed17fff, 0xca995625, 0xe039983e, 0x02b4decc, 0xe64b9a89, 0x99e1f7c0, 0x12ab655e},
       {0xfdebdd01, 0x0c717fff, 0xcd4cab13, 0x1cf2079e, 0xaf764767, 0xa37ff3d3, 0x9a074e8b, 0x12ab655e},
       {0xfef5ee81, 0x0b417fff, 0xcea6558a, 0x3b4e3f4e, 0x05d6fbb4, 0x021a2079, 0x9a19f9f1, 0x12ab655e},
       {0xff7af741, 0x8aa97fff, 0xcf532ac5, 0xca7c5b26, 0xb10755da, 0xb16736cb, 0x9a234fa3, 0x12ab655e},
       {0xffbd7ba1, 0x4a5d7fff, 0xcfa99563, 0x12136912, 0x069f82ee, 0x090dc1f5, 0x9a27fa7d, 0x12ab655e},
       {0xffdebdd1, 0x2a377fff, 0xcfd4cab2, 0xb5def008, 0xb16b9977, 0xb4e10789, 0x9a2a4fe9, 0x12ab655e},
       {0xffef5ee9, 0x9a247fff, 0xcfea6559, 0x87c4b383, 0x06d1a4bc, 0x0acaaa54, 0x9a2b7aa0, 0x12ab655e},
       {0xfff7af75, 0x521affff, 0x4ff532ad, 0xf0b79541, 0x3184aa5e, 0x35bf7bb9, 0x9a2c0ffb, 0x12ab655e},
       {0xfffbd7bb, 0x2e163fff, 0x0ffa9957, 0x25310620, 0xc6de2d30, 0xcb39e46b, 0x9a2c5aa8, 0x12ab655e},
       {0xfffdebde, 0x1c13dfff, 0x6ffd4cac, 0xbf6dbe8f, 0x118aee98, 0x95f718c5, 0x9a2c7fff, 0x12ab655e}}};
  };

  /**
   * Scalar field. Is always a prime field.
   */
  typedef Field<fp_config> scalar_t;
} // namespace bls12_377

#endif