// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';


// class MockClassNameAbst extends Mock implements ClassNameAbst {}


// void main() {
  // late MockClassNameAbst _mockClassNameAbst;
  // late ClassNameRepositImpl _classNameRepositImpl;
  
  // setUp(() {
  //   _mockClassNameAbst = MockClassNameAbst();
  //   _mockClassNameEntity = MockClassNameEntity();
  //   _classNametRepositImpl = ClassNameRepositImpl(classNameAbst: _mockClassNameAbst);
  // });

  // group('ClassNameUsecase =>', () {
  //   test(
  //     'example function of ClassNameRepositImpl should return true if the client make his registration with success',
  //     () async {
  //       //Arrange - Setup facts, Put Expected outputs or Initilize
  //       when(() => _mockClassNameAbst.exampleFunction(
  //           exampleEntity: ExampleEntity())).thenAnswer((_) async => true);
  //       //Act - Call the function that is to be tested

  //       final response = await _classNameRepositImpl.exampleFunction(
  //           exampleEntity: ExampleEntity());

  //       //Assert - Compare the actual result and expected result
  //       expect(response, true);
  //       verify(() => _mockClassNameAbst.exampleFunction(
  //              exampleEntity: ExampleEntity(),
  //           ));
  //       verifyNoMoreInteractions(_mockClassNameAbst);
  //     },
  //   );
  // });
// }
